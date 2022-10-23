Enabling service [sqladmin.googleapis.com] on project [168761789056]...
Operation "operations/acat.p2-168761789056-87e7a3dd-a9eb-4c16-a791-4f817447d94b" finished successfully.
Allowlisting your IP for incoming connection for 5 minutes...done.     
Connecting to database with SQL user [postgres].Password:
psql: error: connection to server at "35.200.130.79", port 5432 failed: FATAL:  password authentication failed for user "postgres"
connection to server at "35.200.130.79", port 5432 failed: FATAL:  password authentication failed for user "postgres"


prakashgpa@cloudshell:~ (hello-world-364409)$ gcloud sql connect assignement2-postgresql --user=postgres
API [sqladmin.googleapis.com] not enabled on project [168761789056]. Would you like to enable and retry (this will take a few minutes)? (y/N)?  y

Enabling service [sqladmin.googleapis.com] on project [168761789056]...
Allowlisting your IP for incoming connection for 5 minutes...done.     
Connecting to database with SQL user [postgres].Password:
psql (14.5 (Debian 14.5-1.pgdg110+1), server 14.4)
SSL connection (protocol: TLSv1.3, cipher: TLS_AES_256_GCM_SHA384, bits: 256, compression: off)
Type "help" for help.


postgres=> CREATE DATABASE assignment2;
CREATE DATABASE
postgres=> \connect assignment2;
Password:
psql (14.5 (Debian 14.5-1.pgdg110+1), server 14.4)
SSL connection (protocol: TLSv1.3, cipher: TLS_AES_256_GCM_SHA384, bits: 256, compression: off)
You are now connected to database "assignment2" as user "postgres".
assignment2=> CREATE TABLE students (entryID SERIAL PRIMARY KEY , studentName VARCHAR(255), address VARCHAR(255));
CREATE TABLE
assignment2=> select * from students
assignment2-> ;
 entryid | studentname | address
---------+-------------+---------
(0 rows)


assignment2=> INSERT INTO students (studentName, address) values ('Aditya', 'Mangalore');
INSERT 0 1
assignment2=> INSERT INTO students (studentName, address) values ('Abhinav', 'Kavoor');
INSERT 0 1
assignment2=> select * from students
assignment2-> ;
 entryid | studentname |  address
---------+-------------+-----------
       1 | Aditya      | Mangalore
       2 | Abhinav     | Kavoor
(2 rows)


assignment2=> UPDATE  students SET  address =’Kateel’ WHERE  entryID=1;
ERROR:  syntax error at or near "UPDATE "

assignment2=> update students set address='Kateel' where studentName='Aditya';
UPDATE 1


assignment2=> select * from students
assignment2-> ;
 entryid | studentname | address
---------+-------------+---------
       2 | Abhinav     | Kavoor
       1 | Aditya      | Kateel
(2 rows)

assignment2=> delete from students where studentName='Abhinav';
DELETE 1
assignment2=> select * from students
assignment2-> ;
 entryid | studentname | address
---------+-------------+---------
       1 | Aditya      | Kateel
(1 row)

assignment2=>
