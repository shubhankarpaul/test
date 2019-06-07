#!/bin/bash

ssh -i ./ssh.pem root@35.200.236.225 "echo "you are in"; hostname;apt update;apt upgrade -y"sshpass -p GF2rq6XPdgES4TwF ssh -o StrictHostKeyChecking=no root@35.200.236.225 "echo "you are in"; hostname;apt update;apt upgrade -y;apt install apache2 -y;a2enmod ssl;a2enmod rewrite;a2enmod headers; systemctl restart apache2"
