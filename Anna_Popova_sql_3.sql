 select * from employees;
 select * from roles_employee;
 select * from salary;
 select * from roles;
 select * from employee_salary;

--1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
    select employee_name, monthly_salary from employee_salary es 
   join employees on es.employee_id= employees.id 
   join salary on salary.id=es.salary_id;
 
 --2. Вывести всех работников у которых ЗП меньше 2000.
    select employee_name, monthly_salary from employee_salary es 
   join employees on es.employee_id= employees.id 
   join salary on salary.id=es.salary_id
   where monthly_salary < 2000; 
 
 --3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
    select employee_name, monthly_salary from employee_salary es 
   left join employees on es.employee_id= employees.id 
   join salary on salary.id=es.salary_id
   where employee_name is null; 
 
 --4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
    select employee_name, monthly_salary from employee_salary es 
   left join employees on es.employee_id= employees.id 
   join salary on salary.id=es.salary_id
   where employee_name is null and monthly_salary < 2000;
 
 --5. Найти всех работников кому не начислена ЗП.
    select employee_name from employees
   left outer join employee_salary es on es.employee_id= employees.id 
   left outer join salary on salary.id=es.salary_id
   where monthly_salary is null; 
 
 --6. Вывести всех работников с названиями их должности.
   select employee_name, role_name from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id;
 
 --7. Вывести имена и должность только Java разработчиков.
    select employee_name, role_name from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id
   where role_name like '%Java developer%';
  
 --8. Вывести имена и должность только Python разработчиков.
     select employee_name, role_name from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id
   where role_name like '%Python developer%';
 
 --9. Вывести имена и должность всех QA инженеров.
     select employee_name, role_name from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id
   where role_name like '%QA%';
 
 --10. Вывести имена и должность ручных QA инженеров.
      select employee_name, role_name from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id
   where role_name like '%Manual QA%';
 
 --11. Вывести имена и должность автоматизаторов QA
       select employee_name, role_name from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id
   where role_name like '%Automation QA%';
 
 --12. Вывести имена и зарплаты Junior специалистов
      select employee_name, monthly_salary from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id
   join employee_salary ES on ES.employee_id = RE.employee_id 
   join salary on ES.salary_id = salary.id
   where role_name like '%Junior%';
 
 --13. Вывести имена и зарплаты Middle специалистов
      select employee_name, monthly_salary from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id
   join employee_salary ES on ES.employee_id = RE.employee_id 
   join salary on ES.salary_id = salary.id
   where role_name like '%Middle%';
 
 --14. Вывести имена и зарплаты Senior специалистов
      select employee_name, monthly_salary from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id
   join employee_salary ES on ES.employee_id = RE.employee_id 
   join salary on ES.salary_id = salary.id
   where role_name like '%Senior%';
 
 --15. Вывести зарплаты Java разработчиков
     select monthly_salary from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id
   join employee_salary ES on ES.employee_id = RE.employee_id 
   join salary on ES.salary_id = salary.id
   where role_name like '%Java%';
 
 --16. Вывести зарплаты Python разработчиков
      select monthly_salary from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id
   join employee_salary ES on ES.employee_id = RE.employee_id 
   join salary on ES.salary_id = salary.id
   where role_name like '%Python%';
 
 --17. Вывести имена и зарплаты Junior Python разработчиков
       select employee_name, monthly_salary from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id
   join employee_salary ES on ES.employee_id = RE.employee_id 
   join salary on ES.salary_id = salary.id
   where role_name like '%Junior Python%';
 
 --18. Вывести имена и зарплаты Middle JS разработчиков
      select employee_name, monthly_salary from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id
   join employee_salary ES on ES.employee_id = RE.employee_id 
   join salary on ES.salary_id = salary.id
   where role_name like '%Middle Java%';
 
 --19. Вывести имена и зарплаты Senior Java разработчиков
     select employee_name, monthly_salary from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id
   join employee_salary ES on ES.employee_id = RE.employee_id 
   join salary on ES.salary_id = salary.id
   where role_name like '%Senior Java%';
 
 --20. Вывести зарплаты Junior QA инженеров
     select employee_name, monthly_salary from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id
   join employee_salary ES on ES.employee_id = RE.employee_id 
   join salary on ES.salary_id = salary.id
   where role_name like '%Junior% %QA%';
 
 --21. Вывести среднюю зарплату всех Junior специалистов
      select AVG(monthly_salary) from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id
   join employee_salary ES on ES.employee_id = RE.employee_id 
   join salary on ES.salary_id = salary.id
   where role_name like '%Junior%';
 
 --22. Вывести сумму зарплат JS разработчиков
      select SUM(monthly_salary) from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id
   join employee_salary ES on ES.employee_id = RE.employee_id 
   join salary on ES.salary_id = salary.id
   where role_name like '%Java%'; 
 
 --23. Вывести минимальную ЗП QA инженеров
      select min(monthly_salary) from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id
   join employee_salary ES on ES.employee_id = RE.employee_id 
   join salary on ES.salary_id = salary.id
   where role_name like '%QA%';
 
 --24. Вывести максимальную ЗП QA инженеров
     select max(monthly_salary) from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id
   join employee_salary ES on ES.employee_id = RE.employee_id 
   join salary on ES.salary_id = salary.id
   where role_name like '%QA%';
 
 --25. Вывести количество QA инженеров
     select count(role_id) from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id
   join employee_salary ES on ES.employee_id = RE.employee_id 
   join salary on ES.salary_id = salary.id
   where role_name like '%QA%';
 
 --26. Вывести количество Middle специалистов.
      select count(role_id) from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id
   join employee_salary ES on ES.employee_id = RE.employee_id 
   join salary on ES.salary_id = salary.id
   where role_name like '%Middle%';
 
 --27. Вывести количество разработчиков
     select count(role_id) from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id
   join employee_salary ES on ES.employee_id = RE.employee_id 
   join salary on ES.salary_id = salary.id
   where role_name like '%developer%';
 
 --28. Вывести фонд (сумму) зарплаты разработчиков.
     select SUM(monthly_salary) from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id
   join employee_salary ES on ES.employee_id = RE.employee_id 
   join salary on ES.salary_id = salary.id
   where role_name like '%developer%';
 
 --29. Вывести имена, должности и ЗП всех специалистов по возрастанию
     select employee_name, role_name, monthly_salary from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id
   join employee_salary ES on ES.employee_id = RE.employee_id 
   join salary on ES.salary_id = salary.id
   order by employee_name;
  
  --30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
      select employee_name, role_name, monthly_salary from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id
   join employee_salary ES on ES.employee_id = RE.employee_id 
   join salary on ES.salary_id = salary.id
   where monthly_salary between 1700 and 2300 
   order by monthly_salary;
 
 --31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
     select employee_name, role_name, monthly_salary from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id
   join employee_salary ES on ES.employee_id = RE.employee_id 
   join salary on ES.salary_id = salary.id
   where monthly_salary < 2300 
   order by monthly_salary;
 
 --32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
       select employee_name, role_name, monthly_salary from roles_employee RE
   join employees on RE.employee_id= employees.id 
   join roles on roles.id=RE.role_id
   join employee_salary ES on ES.employee_id = RE.employee_id 
   join salary on ES.salary_id = salary.id
   where monthly_salary = 1100 OR monthly_salary = 1500 or monthly_salary = 2000 
   order by monthly_salary;