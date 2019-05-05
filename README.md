# slpmy
Clone this, then...
docker build --tag image-1


docker run -d --rm -p 3306:3306 --name m1 image-1

docker logs m1


}> docker run -it --rm --link m1 mysql:latest mysql -hmy-container -uroot -prootA myexample -e "select * from mytable;"
+
