#!/bin/bash

generate_password() {
    local length=$1
    < /dev/urandom tr -dc '1234567890QWERTYUIOPASDFGHJKLZXCVBNMqwertyuiopasdfghjklzxcvbnm@#$%^&*()_+' | head -c "$length"
    echo
}

if [ "$#" -ne 2 ]; then
    echo "Использование: $0 <кол-во паролей> <длина пароля>"
    exit 1
fi

num_passwords=$1
password_length=$2

for ((i = 0; i < num_passwords; i++)); do
    generate_password "$password_length"
done
