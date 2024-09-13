create database if not exists cadastro
default character set utf8
default collate utf8_general_ci;

create table if not exists pessoa(
`id` int not null auto_increment,
`nome` varchar(30) not null,
`nascimento` date,
`sexo` enum ('M', 'F'),
`peso`decimal(5,2),
`altura`decimal(3,2),
`nacionalidade` varchar(20) default 'Brasil',
primary key (id)
)default charset = utf8;

insert into pessoa values
(default, 'Julio', '2005-10-13', 'M', '74.6','1.86', default),
(default, 'Hortência', '1983-10-23', 'F', '53.8','1.76', default),
(default, 'Kemily', '2005-07-09', 'F', '54.5','1.72', default),
(default, 'Tereza', '1961-09-10', 'F', '72.6','1.78', 'Espanha'),
(default, 'Memphis', '1994-02-13', 'M', '78.0','1.78', 'Holanda'),
(default, 'Yuri', '2001-03-10', 'M', '78.0','1.82', 'Brasil'),
(default, 'Tamires', '1987-10-10', 'F', '56.0','1.61', 'Brasil'),
(default, 'Enzo', '2015-01-02', 'M', '34.6','1.50', 'Italia');

select * from pessoa;

desc pessoa;

alter table pessoa
add column pofissao varchar(20) after nome default '';

desc pessoa;
select * from pessoa;

alter table pessoa
rename to pessoas;

alter table pessoas
drop column profissao;

desc pessoas;
select * from pessoas;

create table if not exists cursos (
nome varchar(30) not null unique	,
descricao text,
carga int unsigned, 
totaulas int,
ano year default '2016'
) default charset = utf8;

alter table cursos 
add column idcurso int first;

describe cursos;

alter table cursos
add primary key(idcurso);

describe cursos;

insert into  cursos values 
('1','PHG','Aprenda PHP','40','500','2022'),
('2','CSS','Aprenda CSS','20','100','2012'),
('3','HTML4','Aprenda HTML5','10','800','2024'),
('4','MYSQL','Aprenda MYSQL','30','57','2019'),
('5','REACT','Aprenda REACT','30','300','2017'),
('6','GITs','Aprenda GIT','80','12345',default),
('7','JAVA','Aprenda JAVA','20','32','2021'),
('8','TYPESCRIPT','Aprenda TYPESCRIPT','40','276',default);
('9','TYPECRIPT','Aprenda TYPESCRIPT','40','276',default);

select * from cursos;

update cursos 
set nome = 'HTML5'
where idcurso = '3'
limit 1;

update cursos 
set nome = 'PHP'
where idcurso = '1'
limit 1;

update cursos 
set nome = 'GIT'
where idcurso = '6'
limit 1;

select * from cursos;

delete from cursos 
where idcurso = '9'
limit 1;

select * from cursos;

truncate table cursos;

select * from cursos;

insert into  cursos values 
('1','PHGP','Aprenda PHP','40','500','2022'),
('2','CSS','Aprenda CSS','20','100','2012'),
('3','HTML5','Aprenda HTML5','10','800','2024'),
('4','MYSQL','Aprenda MYSQL','30','57','2019'),
('5','REACT','Aprenda REACT','30','300','2017'),
('6','GIT','Aprenda GIT','80','12345',default),
('7','JAVA','Aprenda JAVA','20','32','2021'),
('8','TYPESCRIPT','Aprenda TYPESCRIPT','40','276',default);

select * from cursos;