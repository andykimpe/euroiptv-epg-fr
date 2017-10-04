#!/bin/bash
rm -f /etc/crontab
cp /etc/crontab.xtreamcodesinstallepg /etc/crontab
service cron restart
