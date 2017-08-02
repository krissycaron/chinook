-- sales_agents.sql: 
-- Provide a query showing only the Employees who are Sales Agents.
Select Employee.FirstName, Employee.LastName
from Employee
where Employee.Title = "Sales Support Agent";