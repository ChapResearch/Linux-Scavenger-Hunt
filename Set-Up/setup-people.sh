#!/bin/bash

while read name
do
    echo -e "creating account for $name..."
    echo -e "$name\n$name\n" | adduser $name
    echo -e "creating folder for $name..."
    mkdir /var/www-chapresearch/Seminar/$name
    chown $name.$name /var/www-chapresearch/Seminar/$name
    echo -e "adding files for $name..."
    FILEPATH=/var/www-chapresearch/Seminar/$name

    if [ ! -f $FILEPATH/$name.html ] 
    then echo "hi" > /var/www-chapresearch/Seminar/$name/$name.html
    else echo "$name.html already exists"
    fi
    chown $name.$name /var/www-chapresearch/Seminar/$name/$name.html 
    chmod 774 /var/www-chapresearch/Seminar/$name/$name.html

    if [ ! -f $FILEPATH/$name-1.html ]
    then cp /var/www-chapresearch/Seminar/format.html /var/www-chapresearch/Seminar/$name/$name-1.html
    else echo "$name-1.html already exists"
    fi
    chown $name.$name /var/www-chapresearch/Seminar/$name/$name-1.html 
    chmod 774 /var/www-chapresearch/Seminar/$name/$name-1.html

    if [ ! -f $FILEPATH/$name-2.html ]
    then cp /var/www-chapresearch/Seminar/form_format.html /var/www-chapresearch/Seminar/$name/$name-2.html
    else echo "$name-2.html already exists"
    fi
    chown $name.$name /var/www-chapresearch/Seminar/$name/$name-2.html 
    chmod 774 /var/www-chapresearch/Seminar/$name/$name-2.html

    if [ ! -f $FILEPATH/$name-3.php ]
    then cp /var/www-chapresearch/Seminar/format.php /var/www-chapresearch/Seminar/$name/$name-3.php
    else echo "$name-3.php already exists"
    fi
    chown $name.$name /var/www-chapresearch/Seminar/$name/$name-3.php
    chmod 774 /var/www-chapresearch/Seminar/$name/$name-3.php

    if [ ! -f $FILEPATH/$name-4.php ]
    then cp /var/www-chapresearch/Seminar/form_format.php /var/www-chapresearch/Seminar/$name/$name-4.php
    else echo "$name-4.php already exists"
    fi
    chown $name.$name /var/www-chapresearch/Seminar/$name/$name-4.php
    chmod 774 /var/www-chapresearch/Seminar/$name/$name-4.php
done < names.txt