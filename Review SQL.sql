CREATE SCHEMA assign1;


ALTER TABLE assign1.ChicagoSalary
ALTER COLUMN Name varchar(255);
ALTER TABLE assign1.ChicagoSalary
ALTER COLUMN PositionTitle varchar(255) ;
ALTER TABLE assign1.ChicagoSalary
ALTER COLUMN Department varchar(255);
ALTER TABLE assign1.ChicagoSalary
ALTER COLUMN Salary decimal(19,2);

 
--**Q1***--
SELECT COUNT (Salary) AS 'Salary Total Records'
	FROM assign1.ChicagoSalary;
--**Q2***--
SELECT COUNT(DISTINCT Name) AS '# of unique Names'
	FROM assign1.ChicagoSalary;
--**Q3***--
SELECT DISTINCT Name, PositionTitle
	FROM assign1.ChicagoSalary
	WHERE Name LIKE '%Spangler%';
--**Q4***--
SELECT min (Salary) AS 'Lowest Salary'
	FROM assign1.ChicagoSalary;
--**Q5***--
SELECT DISTINCT Name, Salary
	FROM assign1.ChicagoSalary
	WHERE Department = 'Water MGMNT'
	AND Salary>150000
	ORDER BY Salary DESC;
--**Q6***--
SELECT SUM(Salary) AS 'Total Salary'
	FROM assign1.ChicagoSalary;
--**Q7***--
SELECT Department,  AVG(Salary) AS 'Average Salary'
	FROM assign1.ChicagoSalary
	GROUP BY Department
	HAVING AVG(Salary)>90000;
--**Q8***--
SELECT Name, Department, MAX(Salary) AS 'Highest Salary'
	FROM assign1.ChicagoSalary
	GROUP BY Name, Department
	ORDER BY 'Highest Salary' DESC
SELECT Department,  AVG(Salary) AS 'Average Salary'
	FROM assign1.ChicagoSalary
	GROUP BY Department;
SELECT 260004.00 - 76213.0402 AS 'Difference of Salary';
--**Q9***--
SELECT Name, Department, ROUND(Salary, 0) AS Salary
	FROM assign1.ChicagoSalary
	WHERE Salary >= 60000
	AND Name LIKE '%Aaron%';
--**Q10***--
SELECT left(Name, CHARINDEX(' ', Name)) as LastName,
	substring(Name, CHARINDEX(' ', Name)+1, len(Name)-(CHARINDEX(' ', Name)-1)) as 'FirstName (with Middle Initial)'
	FROM assign1.ChicagoSalary;
--**Q11***--
/*
It was difficult to remember which writing orders to use for specefic actions, for example which code is used to 
count the number of unique names. What we did is we used w3schools.com and a PDF file Anis have about all the SQL command
*/