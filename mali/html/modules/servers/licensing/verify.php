<?php

function gen_random_string($len, $dict = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789") 
{
    $dict_len = strlen($dict);
    $res = "";
    while ($len--)  $res .= $dict[mt_rand(0, $dict_len - 1)];
    return $res;
}

function enc_and_obfuscate($data, $enc_key) 
{
    $iv_size = mcrypt_get_iv_size(MCRYPT_RIJNDAEL_256, MCRYPT_MODE_ECB);
    $iv = mcrypt_create_iv($iv_size, MCRYPT_RAND);
    $enc_data = mcrypt_encrypt(MCRYPT_RIJNDAEL_256, $enc_key, $data, MCRYPT_MODE_ECB, $iv);
    $result = base64_encode($enc_data);
    $result = str_replace(array("+", "/", "="), array("-", "_", ""), $result);
    $result = mask_enc_key($result, $enc_key);
    return trim($result);
}


function enc_and_hash($data, $enc_key) 
{
    $data = serialize($data);
    $iv = mcrypt_create_iv(mcrypt_get_iv_size(MCRYPT_RIJNDAEL_256, MCRYPT_MODE_CBC), MCRYPT_DEV_URANDOM);
    $enc_key = pack("H*", $enc_key);
    $sha_hash = hash_hmac("sha256", $data, substr(bin2hex($enc_key), -32));
    $encryped_hash = mcrypt_encrypt(MCRYPT_RIJNDAEL_256, $enc_key, $data . $sha_hash, MCRYPT_MODE_CBC, $iv);
    $result = base64_encode($encryped_hash) . "|" . base64_encode($iv);
    return $result;
}

function dec_and_hash($data, $enc_key) 
{
    $data = explode("|", $data . "|");
    $enc_data= base64_decode($data[0]);
    $iv = base64_decode($data[1]);
    if (strlen($iv) !== mcrypt_get_iv_size(MCRYPT_RIJNDAEL_256, MCRYPT_MODE_CBC)) {
        return false;
    }
    $enc_key = pack("H*", $enc_key);
    $result = trim(mcrypt_decrypt(MCRYPT_RIJNDAEL_256, $enc_key, $enc_data, MCRYPT_MODE_CBC, $iv));
    $sha_hash_from_result = substr($result, -64);
    $result = substr($result, 0, -64);
    $sha_hash = hash_hmac("sha256", $result, substr(bin2hex($enc_key), -32));
    if ($sha_hash !== $sha_hash_from_result) {
        return false;
    }
    $result = unserialize($result);
    return $result;
}

function decrypt_reply_data($data) 
{
    $vars = explode(":", $data);
    $count_vars = count($vars);
    $enc_key = "";
    for ($i = 1; $i < $count_vars;$i++) { 
        $enc_key .= substr($vars[$i], 0, 1);
    }

    $data_length = substr($data, 0, 1);
    $data_length .= substr($data, -1);
    $data = substr($data, 1);
    $data = substr($data, 0, -1);
    preg_match_all("/[0-9a-zA-Z]{".$data_length."}\:./", $data, $preg_result);
    $data = str_replace($preg_result[0], array(), $data);
    $base64_data = str_replace(array("-", "_"), array("+", "/"), $data);
    $base64_data_parity = strlen($base64_data) % 4;
    if ($base64_data_parity) { 
        $base64_data .= substr("====", $base64_data_parity);
    }

    $enc_data = base64_decode($base64_data);
    $iv_size = mcrypt_get_iv_size(MCRYPT_RIJNDAEL_256, MCRYPT_MODE_ECB);
    $iv = mcrypt_create_iv($iv_size, MCRYPT_RAND);
    $decrypted_result = mcrypt_decrypt(MCRYPT_RIJNDAEL_256, $enc_key, $enc_data, MCRYPT_MODE_ECB, $iv);
    return $decrypted_result;

}


function validate_result($data,$check_token,$md5_secret) {
    $cur_date = date("Ymd");
    $data = decrypt_reply_data(dec_and_hash($data, md5("XTREAMCODES_FTW!")));
    preg_match_all('/<(.*?)>([^<]+)<\/\1>/i', $data, $vars);
    $result = array();
    foreach ($vars[1] as $name => $value) {
        $result[$value] = $vars[2][$name];
    }
    print_r($data);

    if (!is_array($result)) { 
        exit("Invalid License Server Response");
    }

    if (empty($result["md5hash"])) { 
        return array("status" => "Invalid");
    }

    if ($result["md5hash"] != md5($md5_secret . $check_token)) 
    {
        $result["status"] = "Invalid";
        $result["description"] = "MD5 Checksum Verification Failed";
        return $result;
    }

    if ($result["status"] == "Active") { 
        $result["checkdate"] = $cur_date;
        $localkey = serialize($result);
        $localkey = base64_encode($localkey);
        $localkey = md5($cur_date . $md5_secret) . $localkey;
        $localkey = strrev($localkey);
        $localkey = $localkey . md5($localkey . $md5_secret);
        $localkey = wordwrap($localkey, 80, "\n", true);
        $result["localkey"] = $localkey;
        return $result;
    }
}


function mask_enc_key($enc_value, $enc_key) 
{
    $splitted_value = str_split($enc_key);
    $rand_len = rand(70, 90);
    $splitted_rand_len = str_split($rand_len);

    $enc_value = substr_replace($enc_value, $splitted_rand_len[0], 0, 0);
    $enc_value = substr_replace($enc_value, $splitted_rand_len[1], strlen($enc_value), 0);

    for ($i = 0; $i < count($splitted_value); $i++) {
        $enc_value = substr_replace($enc_value, "+", rand(2, strlen($enc_value) - 1), 0);
    }
    foreach ($splitted_value as $enc_key => $letter ) {
        $enc_value = preg_replace('/\+/', gen_random_string($rand_len) . ":" . $letter, $enc_value, 1);
    }
    return $enc_value;

}

$md5_secret = "96b90f3b34525c54ff21c0caa1f71d19";

if (!isset($_POST) || empty($_POST)) return;
$v = array_shift($_POST);
if ($data = decrypt_reply_data(dec_and_hash($v,md5("dAaCZzzzaAsdASDa!##@")))) {
    parse_str($data,$vars);
    if (isset($vars['check_token'])) {
        $check_token = $vars['check_token'];
        $md5Hash = md5( $md5_secret. $check_token);
        $result = '<status>Active</status>'
            . '<registeredname></registeredname>\n'
            . '<companyname></companyname>\n'
            . '<email></email>\n'
            . '<serviceid>1</serviceid>\n'
            . '<productid>1</productid>\n'
            . '<productname></productname>\n'
            . '<regdate>2015-02-15</regdate>\n'
            . '<nextduedate>2050-12-15</nextduedate>\n'
            . '<billingcycle></billingcycle>\n'
            . '<validdomain></validdomain>\n'
            . '<validip></validip>\n'
            . '<validdirectory></validdirectory>\n'
            . '<configoptions>Extra Load Balancer Servers=5' . '</configoptions>\n'
            . '<customfields></customfields>\n'
            . '<addons>name=CopyRights Removal;nextduedate=0000-00-00;status=Active|name=Detect Reshares with No permissions;nextduedate=2015-04-15;status=Active</addons>\n'
            . '<md5hash>'.$md5Hash.'</md5hash>';

        $result = enc_and_hash(enc_and_obfuscate($result,gen_random_string(32)),md5("XTREAMCODES_FTW!"));
        print $result;
    }
};
