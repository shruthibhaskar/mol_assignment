#!/bin/sh

#count number of 400 errors
err400=$(grep -o 'HTTP/1.1\" 4[0-9][0-9]' /home/ubuntu/apache_logs | wc -l)

#count number of 500 errors
err500=$(grep -o 'HTTP/1.1\" 5[0-9][0-9]' /home/ubuntu/apache_logs | wc -l)

#Send mail alert if errors are more then 100
errors=$(($err400+$err500))
echo "Total number of errors are :$errors"
timestamp=$(date)
echo "timestamp :$timestamp"
if [ $errors -gt 100 ]
  then
    echo Total number of errors are more than 100
    echo "Sending mail, Total number of HTTP 4xx/5xx crossed 100 limit"
    #Send an ssmpt email
    /usr/sbin/ssmtp sbhaskar@palo-it.com < /home/ubuntu/mail.txt
  else
    echo Total number of erros are less than 100
fi

