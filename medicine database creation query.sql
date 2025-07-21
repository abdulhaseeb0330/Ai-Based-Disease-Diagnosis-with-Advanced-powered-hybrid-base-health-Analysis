create database Medicine;
use Medicine;
create table MedicineRecord(
id INT IDENTITY(1,1) PRIMARY KEY,
sname VARCHAR(500) NOT NULL unique,
mname VARCHAR(100) NOT NULL unique);
/*drop database Medicine;*/
