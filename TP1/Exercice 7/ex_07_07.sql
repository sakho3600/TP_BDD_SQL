SELECT
  EMPLOYEE_ID,
  LAST_NAME,
  SALARY
FROM EMPLOYEES
WHERE DEPARTMENT_ID IN 
  (
    SELECT DISTINCT DEPARTMENT_ID 
    FROM EMPLOYEES 
    WHERE INSTR(LAST_NAME,'u') >= 1 or INSTR(LAST_NAME,'U') >= 1
  )
  AND 
    SALARY > (SELECT AVG(SALARY) FROM EMPLOYEES)
;