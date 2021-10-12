#!/usr/bin/env bash

#limpa o Cache/Buffer de RAM:
sync; echo 1 > /proc/sys/vm/drop_caches

#Limpa dentries e inodes:
sync; echo 2 > /proc/sys/vm/drop_caches

sync; echo 3 > /proc/sys/vm/drop_caches


#Para limpar tudo: Cache/Buffer, Dentries e Inodes:
#sync; echo 3 > /proc/sys/vm/drop_caches
