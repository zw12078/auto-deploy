#!/usr/bin/expect
spawn perl /var/www/html/bugzilla/checksetup.pl

expect "Enter the e-mail address of the administrator:"
send "{{ manager_email }}\r"

expect "Enter the real name of the administrator:"
send "{{ manager_user }}\r"

expect "Enter a password for the administrator account:"
send "{{ manager_pass }}\r"

expect "Please retype the password to verify:"
send "{{ manager_pass }}\r"
interact
