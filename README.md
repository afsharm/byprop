# byprop
A PERN project

**More info**

https://dev.to/afsharm/trying-node-js-hi3

**Links**

https://github.com/ahmadazizi/iran-cities

https://github.com/arastu/iran


**Useful synatx**

sudo su - postgres

pg_dump postgres > postgres_db.bak

pg_dump -Fc --no-acl --no-owner --dbname byprop -t province -t county > pro-county.sql

psql db_development < postgres_db.dump




CREATE TABLE mytable

(

    id SERIAL PRIMARY KEY,

    name varchar(50) NOT NULL

);


The command *pwd* shows you where you are

curl http://localhost:3005/load


export DATABASE_URL=postgresql://postgres:123@localhost:5432/byprop
heroku pg:backups:restore https://raw.githubusercontent.com/afsharm/byprop/master/misc/province.sql DATABASE_URL -a byprop
