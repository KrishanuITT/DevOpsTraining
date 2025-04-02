function getOlderLogs(){
    find /var/log/*.log -mtime +7 -printf "FileName: %f Date: %Td-%Tm-%TY\n"
}

getOlderLogs