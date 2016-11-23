#!/bin/bash
chmod -R 755 ./public
lftp -c "open -u $FTP_USER,$FTP_PASSWORD ftp.manteuffel.info; set ssl:verify-certificate no; mirror -R ./public /webseiten/christian"