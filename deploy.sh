#!/bin/bash
echo -e "\033[0;32mBulding site...\033[0m"

hugo

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

chmod -R 755 ./public
lftp -c "open -u $FTP_USER,$FTP_PASSWORD ftp.manteuffel.info; set ssl:verify-certificate no; mirror -R ./public /webseiten/christian"