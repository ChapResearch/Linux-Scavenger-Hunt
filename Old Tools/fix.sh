#!/bin/bash

while read name
do
    chown $name.$name /var/www-chapresearch/Seminar/$name
done < names.txt