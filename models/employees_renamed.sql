{{ config(materialized='view') }}

SELECT 
    EmpID as employee_id,
    FirstName as first_name,
    LastName as last_name,
    Department as department,
    Salary as salary,
    HireDate as hire_date
FROM {{ source('dbo', 'employees') }}
