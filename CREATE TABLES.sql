CREATE TABLE employees (
    emp_no INT PRIMARY KEY  NOT NULL,
    emp_title_id VARCHAR(20)   NOT NULL,
    birth_date DATE   NOT NULL,
    first_name VARCHAR(20)   NOT NULL,
    last_name VARCHAR(20)   NOT NULL,
    sex VARCHAR(20)   NOT NULL,
    hire_date DATE   NOT NULL   
);

CREATE TABLE SALARIES(
    emp_no INT   NOT NULL,
    salary INT   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(EMP_NO)
);

CREATE TABLE TITLES (
    title_id VARCHAR(20)  PRIMARY KEY NOT NULL,
    title VARCHAR(20)   NOT NULL
);



CREATE TABLE DEPT_EMP (
    emp_no INT   NOT NULL,
    dept_no VARCHAR(20)   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(EMP_NO)	
);

CREATE TABLE departments (
    dept_no VARCHAR(20) PRIMARY KEY    NOT NULL,
    dept_name VARCHAR(20)   NOT NULL    
);

CREATE TABLE dept_manager (
    dept_no VARCHAR(20)   NOT NULL,
    emp_no INT   NOT NULL,
    PRIMARY KEY (dept_no,emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees(EMP_NO),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
