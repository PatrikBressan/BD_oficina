-- inserção de dados no BD company

use company_constraints;
show tables;

select * from employee;
insert into employee values ('John', 'B', 'Smith', 123456789, '1965-01-09', '731-Fondren-Houston-TX', 'M', 30000, 654987321, 5);

insert into dependent values (123456789, 'Alice', 'F', '1986-04-05', 'Daughter');
select * from dependent;

insert into department values ('Research', 5, 123456789, '1988-05-22', '1986-05-22');
select * from department;

insert into works_on values (123456789, 1, 31.7);

select * from employee;

-- Gerente e seu departamento
select Ssn, Fname, Dname from employee e, department d where (e.Ssn = d.Mrg_ssn);
    
-- recuperando dependentes dos empregados
select Fname, Dependent_name, Relationship from employee, dependent where Essn = Ssn;

select Bdate, Address from employee
	where Fname = 'John' and Minit='B' and Lname='Smith';
    
-- recuperando departamento específico
select * from department where Dname = 'Research';

select Fname, Lname, Address from employee, department
	where Dname='Research' and Dnumber=Dno;
    
select * from project, works_on where Pnumber=Pno;
    
select Pname, Essn, Fname, Hours from project, works_on, employee
	where Pnumber = Pno and Essn = Ssn;


-- Alias retirando ambiguidade
-- Dnumber: department
show tables;
select Dname, l.Dlocation as Department_name
	from department as d, dept_locations as l
    where d.Number = l.Dnumber;








