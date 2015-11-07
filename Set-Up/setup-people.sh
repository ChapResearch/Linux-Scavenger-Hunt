#!/bin/bash

while read name
do
    echo "creating account for $name..."
    echo "$name\n$name\n" | adduser $name
    echo "creating folder for $name..."
    mkdir -p ../ScavengerHunt/HomeDirectories/$name
    chown $name.$name ../ScavengerHunt/HomeDirectories/$name
    echo "adding files for $name..."
    FILEPATH=../ScavengerHunt/HomeDirectories/$name

    if [ ! -f $FILEPATH/$name.html ] 
    then echo "hi" > $FILEPATH/$name.html
    else echo "$name.html already exists"
    fi
    chown $name.$name $FILEPATH/$name.html 
    chmod 774 $FILEPATH/$name.html

    if [ ! -f $FILEPATH/$name-1.html ]
    then cp format.html $FILEPATH/$name-1.html
    else echo "$name-1.html already exists"
    fi
    chown $name.$name $FILEPATH/$name-1.html 
    chmod 774 $FILEPATH/$name-1.html

    if [ ! -f $FILEPATH/$name-2.html ]
    then cp form_format.html $FILEPATH/$name-2.html
    else echo "$name-2.html already exists"
    fi
    chown $name.$name $FILEPATH/$name-2.html 
    chmod 774 $FILEPATH/$name-2.html

    if [ ! -f $FILEPATH/$name-3.php ]
    then cp format.php $FILEPATH/$name-3.php
    else echo "$name-3.php already exists"
    fi
    chown $name.$name $FILEPATH/$name-3.php
    chmod 774 $FILEPATH/$name-3.php

    if [ ! -f $FILEPATH/$name-4.php ]
    then cp form_format.php $FILEPATH/$name-4.php
    else echo "$name-4.php already exists"
    fi
    chown $name.$name $FILEPATH/$name-4.php
    chmod 774 $FILEPATH/$name-4.php
done < names.txt
