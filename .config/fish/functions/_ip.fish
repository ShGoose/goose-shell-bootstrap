function _ip
    echo -e "Список IP-адресов интерфейсов: \n$(ip a | grep 'inet ' | grep -v 127\.0\.0\.1 | awk '{print $2}' | cut -d/ -f1)"
end
