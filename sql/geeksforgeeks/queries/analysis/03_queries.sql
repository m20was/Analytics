USE geeksforgeeks;

-- 1) Confirm tables exist
SHOW TABLES;
-- Example query to select all employees with a salary greater than 2500 and order them by salary in descending order
SELECT ename, job, sal 
FROM emp 
WHERE sal > 2500 
ORDER BY sal DESC;

-- Top 20 SQL Interview Questions| GeeksforGeeks------------------------------------------------------------------------------------------------------------------
-- 2nd Highest Salary | Ep-1 |--------------------------------------------------------------------------------------------------
SELECT DISTINCT sal AS second_highest_salary
FROM emp
ORDER BY sal DESC
LIMIT 1 OFFSET 1;

SELECT empno, ename, job, sal
FROM emp
WHERE sal = (
  SELECT DISTINCT sal
  FROM emp
  ORDER BY sal DESC
  LIMIT 1 OFFSET 1
);

--Department Wise Highest Salary | Ep-2 |--------------------------------------------------------------------------------------------------
SELECT MAX(sal), deptno
FROM emp
GROUP BY deptno; 
-- When using GROUP BY, the SELECT statement 
--can only include columns that are either 
--aggregated (like MAX, MIN, AVG, COUNT) or included in 
--the GROUP BY clause. In this case, we are selecting 
--the maximum salary (MAX(sal)) for each department (deptno), 
--so we group the results by deptno to get the highest salary for each department.

--Display Alternate Records | Ep-3 |--------------------------------------------------------------------------------------------------
SELECT * FROM (SELECT ROW_NUMBER() OVER(ORDER BY NULL) AS r, emp.* FROM emp) t --  for natural order keep Over() empty or use Over(ORDER BY NULL/ASC/DESC) for specific ordering.
WHERE r % 2 = 1; 
-- row_num %2 =(0/1/!=0) is for even / odd / alternate records.

--Display Duplicate of a Column | Ep-4 |--------------------------------------------------------------------------------------------------
select ename, count(*)
from emp
group by ename
having count(*) > 1;

--Pattern Matching in SQL | Ep-5 |--------------------------------------------------------------------------------------------------
-- Using the LIKE operator for pattern matching
SELECT ename
FROM emp
WHERE ename LIKE 'A%'; -- Names starting with 'A'

SELECT ename
FROM emp
WHERE ename LIKE '%A'; -- Names ending with 'A'

SELECT ename
FROM emp
WHERE ename LIKE '%A%'; -- Names containing 'A'
--WHERE ename NOT LIKE '%A%'; -- Names not containing 'A'

--Pattern Searching in SQL- 2 | Ep-6 |--------------------------------------------------------------------------------------------------
select ename
from emp    
where ename like '____'; -- Names having at least 4 characters 

SELECT ename
FROM emp
WHERE ename LIKE '_A%'; -- Names with 'A' as the second/n character

select ename
from emp
where ename like '_A_T%'; -- Names containing (i) second character as 'A' and (ii) fourth character as 'T'

select hiredate, ename
from emp
where hiredate like '%12%'; -- Names containing '12/DEC' in hiredate

select ename
from emp   
where ename like '%LL%'; -- Names containing 'LL'

select ename
from emp    
where ename like 'J%S'; -- Names starting with 'J' and ending with 'S'

-- Display Nth Row in SQL | Ep-7 |--------------------------------------------------------------------------------------------------
select *
from emp
limit 1 offset 3; -- Display the 4/nth row (offset is zero-based so n-1)
-- Minus operator is not supported in MySQL, so we use LIMIT with OFFSET to achieve the same result.

SELECT * FROM (SELECT ROW_NUMBER() OVER() AS r, emp.* FROM emp) t 
WHERE r IN (2, 3, 7); -- Display the 2nd, 3rd, and 7th rows using a subquery with ROW_NUMBER().


--Union vs Uninonall |Ep-8 | --------------------------------------------------------------------------------------------------
-- UNION: Combines the result sets of two or more SELECT statements and removes duplicate rows from the result set.
-- UNION ALL: Combines the result sets of two or more SELECT statements and includes all rows, including duplicates.
select city from sample1
union
select city from sample2;

select city from sample1
union ALL
select city from sample2;

--Inner Join | Ep-9 |--------------------------------------------------------------------------------------------------
--Based on the equality condition data is retrieved from multiple tables.
--We must have a common column in both tables with the same data type.
--Right table is joined with left table row only if there is matching for the left table row in right table.
select ename, sal, dept.deptno, dname, loc
from emp, dept
where emp.deptno = dept.deptno;

select ename, sal, d.deptno, dname, loc
from emp e, dept d
where e.deptno = d.deptno  AND loc='CHICAGO';--using alias & condition 

select dname, sum(sal) as total_salary
from emp e, dept d
where e.deptno = d.deptno
group by dname;--Group by clause is used to group rows that have the same values in specified columns into summary rows, like "find the total salary for each department".

--Self Join | Ep-10 |--------------------------------------------------------------------------------------------------
--A self join is a regular join, but the table is joined with itself.
--Comparing values of a values with the values of same column itself or different column of same table.
select e1.ename as employee, e2.ename as manager
from emp e1, emp e2
where e1.mgr = e2.empno; 
--Comparing the manager's employee number (mgr) in one instance of the emp table (e1) with the employee number (empno) in another instance of the emp table (e2).

select e1.ename as employee, e2.ename as manager
from emp e1, emp e2
where e1.mgr = e2.empno AND e1.sal > e2.sal;
--Comparing the manager's employee number (mgr) in one instance of the emp table (e1) with the employee number (empno) in another instance of the emp table (e2) and filtering employees with salary greater than their manager's salary.

select e1.ename as employee, e2.ename as manager
from emp e1, emp e2
where e1.mgr = e2.empno AND e1.hiredate < e2.hiredate;
--Comparing the manager's employee number (mgr) in one instance of the emp table (e1) with the employee number (empno) in another instance of the emp table (e2) and filtering employees hired before their manager's hire date.

--Left Join | Ep-11 |--------------------------------------------------------------------------------------------------
-- A left join returns all rows from the left table and the matched rows from the right table. If no match is found, NULL values are returned for columns from the right table.
select ROW_NUMBER() OVER() AS r, empno, ename, e.deptno, dname, loc, job
from emp e
left join dept d on e.deptno = d.deptno and dname='SALES'; -- note on is used only for join condition, where is used for filtering the result set after the join.

-- This will hide all non-Sales employees entirely from the list
SELECT ROW_NUMBER() OVER() AS r, empno, ename, e.deptno, dname, loc, job
FROM emp e
LEFT JOIN dept d ON e.deptno = d.deptno
WHERE dname = 'SALES';


--Right Join | Ep-12 |--------------------------------------------------------------------------------------------------
-- A right join returns all rows from the right table and the matched rows from the left table. if no match is found, NULL values are returned for columns from the left table.
select ROW_NUMBER() OVER() AS r, ename, job, sal, loc, dname, d.deptno
from emp e
right join dept d on e.deptno = d.deptno AND d.deptno= 20; 

select ROW_NUMBER() OVER() AS r, ename, job, sal, loc, dname, d.deptno
from emp e
right join dept d on e.deptno = d.deptno
where d.deptno= 20; 

--Full Join | Ep-13 |--------------------------------------------------------------------------------------------------
-- A full join returns all rows when there is a match in either left or right table. If no match is found, NULL values are returned for columns from the table without a match.
-- Yes, FULL JOIN does not exist natively in MySQL. use UNION of LEFT JOIN and RIGHT JOIN to achieve the same result.

--Cross Join | Ep-14 |--------------------------------------------------------------------------------------------------
-- A cross join returns the Cross product of the two tables, i.e., it returns all possible combinations of rows from the two tables.
select ROW_NUMBER() OVER() AS r, ename, d.deptno, sal, dname, loc
from emp e
cross join dept d;

select ROW_NUMBER() OVER() AS r, ename, d.deptno, sal, dname, loc
from emp e
cross join dept d WHERE d.deptno= 40;-- cross join with condition

--Display 1st or Last Nth Rows | Ep-15 |--------------------------------------------------------------------------------------------------
select *
from (select ROW_NUMBER() OVER(ORDER BY NULL) AS r, emp.* from emp) t
where r = 1 OR r = (select COUNT(*) from emp); -- Display the first and last rows

select *
from (select ROW_NUMBER() OVER(ORDER BY NULL) AS r, emp.* from emp) t
order by r DESC
limit 2 OFFSET 0; -- Display the last 2 rows

-- Super Compact First/Last 2 Rows
SELECT * FROM (SELECT ROW_NUMBER() OVER() AS r, emp.* FROM emp) t
WHERE r <= 1 OR r > (SELECT COUNT(*) FROM emp) - 2;

--Nth Highest Salary | Ep-16 | --------------------------------------------------------------------------------------------------
SELECT DISTINCT sal AS nth_highest_salary FROM emp ORDER BY sal DESC LIMIT 1 OFFSET 2; -- 3rd highest salary

--Intersect in SQL | Ep - 17 | --------------------------------------------------------------------------------------------------
-- Intersect operator is used to return the common records from two SELECT statements. It returns only distinct records that are present in both result sets.
SELECT * FROM sample1
INTERSECT
SELECT * FROM sample2;

--Minus in SQL | Ep - 18 | --------------------------------------------------------------------------------------------------
--Minus Operator Does not exist in MySQL. Use NOT IN or LEFT JOIN to achieve the same result.
SELECT * FROM sample1
WHERE city NOT IN (SELECT city FROM sample2);

--First Normal Form | Ep- 19 | --------------------------------------------------------------------------------------------------
-- First Normal Form (1NF) is a property of a relation in a relational database. A relation is in 1NF if and only if no attribute domain has relations as values. In other words, each column must contain atomic, indivisible values, and each row must be unique. 

--Cross Join | Ep-14 |--------------------------------------------------------------------------------------------------
-- A cross join returns the Cross product of the two tables, i.e., it returns all possible combinations of rows from the two tables.
select ROW_NUMBER() OVER() AS r, ename, d.deptno, sal, dname, loc
from emp e
cross join dept d;

select ROW_NUMBER() OVER() AS r, ename, d.deptno, sal, dname, loc
from emp e
cross join dept d WHERE d.deptno= 40;-- cross join with condition

--Display 1st or Last Nth Rows | Ep-15 |--------------------------------------------------------------------------------------------------
select *
from (select ROW_NUMBER() OVER(ORDER BY NULL) AS r, emp.* from emp) t
where r = 1 OR r = (select COUNT(*) from emp); -- Display the first and last rows

select *
from (select ROW_NUMBER() OVER(ORDER BY NULL) AS r, emp.* from emp) t
order by r DESC
limit 2 OFFSET 0; -- Display the last 2 rows

-- Super Compact First/Last 2 Rows
SELECT * FROM (SELECT ROW_NUMBER() OVER() AS r, emp.* FROM emp) t
WHERE r <= 1 OR r > (SELECT COUNT(*) FROM emp) - 2;

--Nth Highest Salary | Ep-16 | --------------------------------------------------------------------------------------------------
SELECT DISTINCT sal AS nth_highest_salary FROM emp ORDER BY sal DESC LIMIT 1 OFFSET 2; -- 3rd highest salary

--Intersect in SQL | Ep - 17 | --------------------------------------------------------------------------------------------------
-- Intersect operator is used to return the common records from two SELECT statements. It returns only distinct records that are present in both result sets.
SELECT * FROM sample1
INTERSECT
SELECT * FROM sample2;

--Minus in SQL | Ep - 18 | --------------------------------------------------------------------------------------------------
--Minus Operator Does not exist in MySQL. Use NOT IN or LEFT JOIN to achieve the same result.
SELECT * FROM sample1
WHERE city NOT IN (SELECT city FROM sample2);

--First Normal Form | Ep- 19 | --------------------------------------------------------------------------------------------------
-- First Normal Form (1NF) is a property of a relation in a relational database. A relation is in 1NF if and only if no attribute domain has relations as values. In other words, each column must contain atomic, indivisible values, and each row must be unique. 
