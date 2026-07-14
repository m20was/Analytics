CREATE DATABASE IF NOT EXISTS geeksforgeeks;
USE geeksforgeeks;

DROP TABLE IF EXISTS emp;
DROP TABLE IF EXISTS dept;

CREATE TABLE dept (
  deptno INT NOT NULL PRIMARY KEY,
  dname  VARCHAR(14) NOT NULL,
  loc    VARCHAR(13) NOT NULL
);

CREATE TABLE emp (
  empno    INT NOT NULL PRIMARY KEY,
  ename    VARCHAR(10) NOT NULL,
  job      VARCHAR(9) NOT NULL,
  mgr      INT NULL,
  hiredate DATE NOT NULL,
  sal      DECIMAL(7,2) NOT NULL,
  comm     DECIMAL(7,2) NULL,
  deptno   INT NOT NULL,
  CONSTRAINT fk_emp_dept FOREIGN KEY (deptno) REFERENCES dept(deptno)
);

-- 1) Create tables
CREATE TABLE sample1 (
    city VARCHAR(50),
    country VARCHAR(50)
);

CREATE TABLE sample2 (
    city VARCHAR(50),
    country VARCHAR(50)
);
