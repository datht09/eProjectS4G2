
go
create database FIS;
go
go
use FIS;
go
create table tbl_Department
(
_id varchar(10) primary key,
_name nvarchar(20) not null,
_des nvarchar(50) null
);


create table tbl_Account
(
_username varchar(20) primary key,
_password varchar(20) not null,
_role int not null /* 0=admin, 1=Employee, 2=Technician*/
);
create table tbl_AccountInfo
(
_username varchar(20),
_departmentID varchar(10),
_fullname nvarchar(50) not null,
_email varchar(100),
_image varchar(250),
_phonenumber varchar(20),
_address nvarchar(200),
  foreign key (_username) references tbl_Account(_username),
  foreign key (_departmentID) references tbl_Department(_id),
primary key(_username)
);
create table tbl_QueryCategory
(
_id varchar(10) primary key,
_name nvarchar(50) not null,
_des nvarchar(250) null
);
create table tbl_Jobs
(
_username varchar(20),
_department varchar(10),
_category varchar(10),
 foreign key (_username) references tbl_Account(_username),
 foreign key (_category) references tbl_QueryCategory(_id),
  foreign key (_department) references tbl_Department(_id),
primary key(_username,_department,_category)

);

create table tbl_Query
(
_id int identity(1,1) primary key,
_username varchar(20),
_departmentID varchar(10),
_category varchar(10),
_subject nvarchar(50) not null,
_content text not null,
_dateoflodging datetime default GETDATE(),
_dateofclosing datetime not null,
_status int default 0,  /*0=Pending ; 1=Processing; 2=Resolved; 3=Not Resolved ; 4=Cancel*/
 foreign key (_username) references tbl_Account(_username),
  foreign key (_departmentID) references tbl_Department(_id),
foreign key (_category) references tbl_QueryCategory(_id)
);
create table tbl_Reply
(
_id integer identity primary key,
_queryID integer not null,
_username varchar(20)  not null,
_content text not null,
_date datetime default GETDATE(),
_status int default 0, /*0=unread, 1=read */
 foreign key (_queryID) references tbl_Query(_id),
foreign key (_username) references tbl_Account(_username)


);
create table tbl_Article
(
_id integer identity primary key,
_title nvarchar(100) not null,
_content text,
_summary nvarchar(250),
_thumbnail varchar(250),
_username varchar(20) not null,
_dateofpost datetime default GETDATE(),
foreign key (_username) references tbl_Account(_username)
);
create table tbl_ArticleRate
(
_id integer identity primary key,
_articleid integer,
_username varchar(20) not null,
_rate int,
foreign key (_articleid) references tbl_Article(_id),
foreign key (_username) references tbl_Account(_username)
);
create table tbl_FAQ
(
_id integer identity primary key,
_question nvarchar(250) not null,
_answer nvarchar(250) not null
);



