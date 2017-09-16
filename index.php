<?php

$nb_fichier = 0;
echo '<br/><br/><br/><br/><br/><center><ul>';
if($dossier = opendir('./'))
{
while(false !== ($fichier = readdir($dossier)))
{

if($fichier != '.' && $fichier != '..' && $fichier != 'index.php')
{
$nb_fichier++; 
echo '<li><a href="./' . $fichier . '">' . $fichier . '</a></li>';
} 
} 
echo '</ul><br />';
echo 'Il y a <strong>' . $nb_fichier .'</strong> fichier(s) dans le dossier</center>';
closedir($dossier);
}else
echo 'Le dossier n\' a pas pu être ouvert';
?>
