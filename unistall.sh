#!/bin/bash
rm -f /etc/crontab
mv /etc/crontab.xtreamcodesinstallepg /etc/crontab
service cron restart
