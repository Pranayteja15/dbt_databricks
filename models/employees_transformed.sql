{{ config(materialized='view') }}

SELECT 
    CAST(EmpID as bigint) as employee_id,
    UPPER(FirstName) as first_name,
    UPPER(LastName) as last_name,
    INITCAP(Department) as department,
    CAST(Salary as double) as salary,
    DATE_TRUNC('month', HireDate) as hire_date
FROM {{ source('dbo', 'employees') }}
