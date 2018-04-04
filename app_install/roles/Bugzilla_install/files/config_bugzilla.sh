#!/usr/bin/expect
spawn perl /var/www/html/bugzilla/checksetup.pl

expect "Enter the e-mail address of the administrator:"
send "zhangwei@lingyi365.com\r"

expect "Enter the real name of the administrator:"
send "admin\r"

expect "Enter a password for the administrator account:"
send "qwe12345\r"

expect "Please retype the password to verify:"
send "qwe12345\r"
interact
