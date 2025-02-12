#!/bin/bash
# Generate SSL Certificate using Cloudflare DNS Challenge
read -p "Enter the Domain(s) (domain1.com,domain2.com):  " domains

certbot certonly --dns-cloudflare --dns-cloudflare-credentials /root/.secrets/cloudflare.ini -d $domains --preferred-challenges dns-01
