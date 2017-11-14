SELECT 
  LAST_NAME,
  SALARY
FROM EMPLOYEES
WHERE
  MANAGER_ID IN 
    (
    SELECT EMPLOYEE_ID 
    FROM EMPLOYEES 
    WHERE LAST_NAME = 'King'
    ) -- il y a aussi une femme King donc on met le IN
;