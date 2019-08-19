#!bin/bash

touch 1.json 2.json 3.son 4.json 5.json 6.json 7.json 8.json 9.json 10.json
i=1
while [ $i -le 10 ]
do
	wget http swapi.co/api/people/$i/
	cat index.html > $i.json
	rm index.html
	((i++))
done

