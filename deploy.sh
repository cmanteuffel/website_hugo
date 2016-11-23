#!/bin/bash
echo -e "\033[0;32mSetting user rights...\033[0m"

chmod -R 755 ./public
echo -e "\033[0;32mDeploying updates...\033[0m"
lftp -c "open -u $FTP_USER,$FTP_PASSWORD ftp.manteuffel.info; set ssl:verify-certificate no; mirror -R ./public /webseiten/christian"