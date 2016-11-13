#!/bin/bash

uso() {
    echo -e "\nUso: $0 [puerto-serie]\n"
}

if [ $# -ne 1 ]
then
    uso
    exit 1
fi
avrdude -F -V -c arduino -p ATMEGA328P -P $1 -b 115200 -U flash:w:main.hex

