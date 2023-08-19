1.-List the employee number, last name, first name, sex, and salary of each employee.
SELECT EMPLOYEES.EMP_NO,EMPLOYEES.LAST_NAME,EMPLOYEES.FIRST_NAME,EMPLOYEES.SEX,SALARIES.SALARY 
FROM EMPLOYEES 
JOIN SALARIES  ON EMPLOYEES.EMP_NO = SALARIES.EMP_NO;
 
2.-List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT EMPLOYEES.EMP_NO,EMPLOYEES.FIRST_NAME,EMPLOYEES.LAST_NAME,EMPLOYEES.hire_date
FROM EMPLOYEES 
WHERE hire_date>='1986-01-21' AND hire_date <= '1986-12-31';
 
 
3.-List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT dept_manager.DEPT_NO,departments.dept_name,dept_manager.EMP_NO,EMPLOYEES.LAST_NAME,EMPLOYEES.FIRST_NAME
FROM dept_manager
JOIN departments ON dept_manager.DEPT_NO = departmentS.DEPT_NO
JOIN EMPLOYEES  ON dept_manager.EMP_NO = EMPLOYEES.EMP_NO;


4.-List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT EMPLOYEES.EMP_NO,EMPLOYEES.FIRST_NAME,EMPLOYEES.LAST_NAME,DEPT_EMP.DEPT_NO,departments.dept_name
FROM EMPLOYEES
JOIN DEPT_EMP  ON   EMPLOYEES.EMP_NO = DEPT_EMP.EMP_NO
JOIN departments ON dept_EMP.DEPT_NO = departmentS.DEPT_NO; 

5.-List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT EMPLOYEES.FIRST_NAME,EMPLOYEES.LAST_NAME,EMPLOYEES.EMP_NO,EMPLOYEES.sex  
FROM EMPLOYEES
WHERE FIRST_NAME='Hercules' AND last_name LIKE 'B%';

6.-List each employee in the Sales department, including their employee number, last name, and first name.
SELECT EMPLOYEES.EMP_NO,EMPLOYEES.LAST_NAME,EMPLOYEES.FIRST_NAME,departments.dept_name
FROM EMPLOYEES
JOIN DEPT_EMP  ON   EMPLOYEES.EMP_NO = DEPT_EMP.EMP_NO
JOIN departments ON dept_EMP.DEPT_NO = departmentS.DEPT_NO
WHERE DEPT_NAME = 'Sales'; 

7.-List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT EMPLOYEES.EMP_NO,EMPLOYEES.LAST_NAME,EMPLOYEES.FIRST_NAME,departments.dept_name
FROM EMPLOYEES
JOIN DEPT_EMP  ON   EMPLOYEES.EMP_NO = DEPT_EMP.EMP_NO
JOIN departments ON dept_EMP.DEPT_NO = departmentS.DEPT_NO
WHERE DEPT_NAME = 'Sales' or DEPT_NAME ='Development' ; 

8.-List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT EMPLOYEES.LAST_NAME, COUNT(*) AS FREQUENCY 
FROM EMPLOYEES  
GROUP BY LAST_NAME
ORDER BY FREQUENCY DESC;