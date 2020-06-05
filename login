#!/usr/bin/expect

#https://github.com/Sude-/lgogdownloader/issues/72
eval spawn "/usr/bin/lgogdownloader --login";
expect "Email:";
send "$env(GOG_EMAIL)\n";
expect "Password:";
send "$env(GOG_PASSWORD)\n";
expect eof

