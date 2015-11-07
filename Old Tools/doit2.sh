
for i in 1 2 3 4 5 6 7 8 9 0
do
for j in 1 2 3 4 5 6 7 8 9 0
do
for k in 1 2 3 4 5 6 7 8 9 0
do
    file=`./longFilename.sh 4 | tr -d "'\n"`
    content=`./longFilename.sh 6 | tr -d "'\n"`

    echo "$content" > ../FourthClue/$file
done
done
done
