 select * from employees;
 select * from roles_employee;
 select * from salary;
 select * from roles;
 select * from employee_salary;

--1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
    select employee_name, monthly_salary from employee_salary es 
   join employees on es.employee_id= employees.id 
   join salary on salary.id=es.salary_id;
 
 --2. ������� ���� ���������� � ������� �� ������ 2000.
    select employee_name, monthly_salary from employee_salary es 
   join employees on es.employee_id= employees.id 
   join salary on salary.id=es.salary_id
   where monthly_salary < 2000; 
 
 --3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
    select employee_name, monthly_salary from employee_salary es 
   left join employees on es.employee_id= employees.id 
   join salary on salary.id=es.salary_id
   where employee_name is null; 
 
 --4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
    select employee_name, monthly_salary from employee_salary es 
   left join employees on es.employee_id= employees.id 
   join salary on salary.id=es.salary_id
   where employee_name is null and monthly_salary < 2000;
 
 --5. ����� ���� ���������� ���� �� ��������� ��.
    select employee_name from employees
   left outer join employee_salary es on es.employee_id= employees.id 
   left outer join salary on salary.id=es.salary_id
   where monthly_salary is null; 
 
 --6. ������� ���� ���������� � ���������� �� ���������.
   select employee_name, role_name from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id;
 
 --7. ������� ����� � ��������� ������ Java �������������.
    select employee_name, role_name from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id
   where role_name like '%Java developer%';
  
 --8. ������� ����� � ��������� ������ Python �������������.
     select employee_name, role_name from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id
   where role_name like '%Python developer%';
 
 --9. ������� ����� � ��������� ���� QA ���������.
     select employee_name, role_name from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id
   where role_name like '%QA%';
 
 --10. ������� ����� � ��������� ������ QA ���������.
      select employee_name, role_name from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id
   where role_name like '%Manual QA%';
 
 --11. ������� ����� � ��������� ��������������� QA
       select employee_name, role_name from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id
   where role_name like '%Automation QA%';
 
 --12. ������� ����� � �������� Junior ������������
      select employee_name, monthly_salary from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id
   join employee_salary ES on ES.employee_id = RE.employee_id 
   join salary on ES.salary_id = salary.id
   where role_name like '%Junior%';
 
 --13. ������� ����� � �������� Middle ������������
      select employee_name, monthly_salary from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id
   join employee_salary ES on ES.employee_id = RE.employee_id 
   join salary on ES.salary_id = salary.id
   where role_name like '%Middle%';
 
 --14. ������� ����� � �������� Senior ������������
      select employee_name, monthly_salary from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id
   join employee_salary ES on ES.employee_id = RE.employee_id 
   join salary on ES.salary_id = salary.id
   where role_name like '%Senior%';
 
 --15. ������� �������� Java �������������
     select monthly_salary from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id
   join employee_salary ES on ES.employee_id = RE.employee_id 
   join salary on ES.salary_id = salary.id
   where role_name like '%Java%';
 
 --16. ������� �������� Python �������������
      select monthly_salary from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id
   join employee_salary ES on ES.employee_id = RE.employee_id 
   join salary on ES.salary_id = salary.id
   where role_name like '%Python%';
 
 --17. ������� ����� � �������� Junior Python �������������
       select employee_name, monthly_salary from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id
   join employee_salary ES on ES.employee_id = RE.employee_id 
   join salary on ES.salary_id = salary.id
   where role_name like '%Junior Python%';
 
 --18. ������� ����� � �������� Middle JS �������������
      select employee_name, monthly_salary from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id
   join employee_salary ES on ES.employee_id = RE.employee_id 
   join salary on ES.salary_id = salary.id
   where role_name like '%Middle Java%';
 
 --19. ������� ����� � �������� Senior Java �������������
     select employee_name, monthly_salary from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id
   join employee_salary ES on ES.employee_id = RE.employee_id 
   join salary on ES.salary_id = salary.id
   where role_name like '%Senior Java%';
 
 --20. ������� �������� Junior QA ���������
     select employee_name, monthly_salary from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id
   join employee_salary ES on ES.employee_id = RE.employee_id 
   join salary on ES.salary_id = salary.id
   where role_name like '%Junior% %QA%';
 
 --21. ������� ������� �������� ���� Junior ������������
      select AVG(monthly_salary) from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id
   join employee_salary ES on ES.employee_id = RE.employee_id 
   join salary on ES.salary_id = salary.id
   where role_name like '%Junior%';
 
 --22. ������� ����� ������� JS �������������
      select SUM(monthly_salary) from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id
   join employee_salary ES on ES.employee_id = RE.employee_id 
   join salary on ES.salary_id = salary.id
   where role_name like '%Java%'; 
 
 --23. ������� ����������� �� QA ���������
      select min(monthly_salary) from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id
   join employee_salary ES on ES.employee_id = RE.employee_id 
   join salary on ES.salary_id = salary.id
   where role_name like '%QA%';
 
 --24. ������� ������������ �� QA ���������
     select max(monthly_salary) from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id
   join employee_salary ES on ES.employee_id = RE.employee_id 
   join salary on ES.salary_id = salary.id
   where role_name like '%QA%';
 
 --25. ������� ���������� QA ���������
     select count(role_id) from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id
   join employee_salary ES on ES.employee_id = RE.employee_id 
   join salary on ES.salary_id = salary.id
   where role_name like '%QA%';
 
 --26. ������� ���������� Middle ������������.
      select count(role_id) from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id
   join employee_salary ES on ES.employee_id = RE.employee_id 
   join salary on ES.salary_id = salary.id
   where role_name like '%Middle%';
 
 --27. ������� ���������� �������������
     select count(role_id) from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id
   join employee_salary ES on ES.employee_id = RE.employee_id 
   join salary on ES.salary_id = salary.id
   where role_name like '%developer%';
 
 --28. ������� ���� (�����) �������� �������������.
     select SUM(monthly_salary) from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id
   join employee_salary ES on ES.employee_id = RE.employee_id 
   join salary on ES.salary_id = salary.id
   where role_name like '%developer%';
 
 --29. ������� �����, ��������� � �� ���� ������������ �� �����������
     select employee_name, role_name, monthly_salary from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id
   join employee_salary ES on ES.employee_id = RE.employee_id 
   join salary on ES.salary_id = salary.id
   order by employee_name;
  
  --30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
      select employee_name, role_name, monthly_salary from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id
   join employee_salary ES on ES.employee_id = RE.employee_id 
   join salary on ES.salary_id = salary.id
   where monthly_salary between 1700 and 2300 
   order by monthly_salary;
 
 --31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
     select employee_name, role_name, monthly_salary from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id
   join employee_salary ES on ES.employee_id = RE.employee_id 
   join salary on ES.salary_id = salary.id
   where monthly_salary < 2300 
   order by monthly_salary;
 
 --32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
       select employee_name, role_name, monthly_salary from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id
   join employee_salary ES on ES.employee_id = RE.employee_id 
   join salary on ES.salary_id = salary.id
   where monthly_salary = 1100 OR monthly_salary = 1500 or monthly_salary = 2000 
   order by monthly_salary;