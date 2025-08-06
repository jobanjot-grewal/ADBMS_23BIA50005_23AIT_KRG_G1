-- Joins 
/*	Backend - Catesian Product
	Type :
		Inner Join, Left Outer, Right Outer, Full Outer, Self, Left Exclusive, Right Exclusive
		ALIAS - TEMPORARY NOMENCLATURE
		-- syntax
*/
-- Experiment 2
--------------(MEDIUM LEVEL)--------------

CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50) NOT NULL,
    Department VARCHAR(50) NOT NULL,
    ManagerID INT NULL  
);

ALTER TABLE Employee
ADD CONSTRAINT FK_EMPLOYEE FOREIGN KEY (ManagerID) REFERENCES Employee(EmpID) 

INSERT INTO Employee (EmpID, EmpName, Department, ManagerID)
VALUES
(1, 'Alice', 'HR', NULL),        
(2, 'Bob', 'Finance', 1),
(3, 'Charlie', 'IT', 1),
(4, 'David', 'Finance', 2),
(5, 'Eve', 'IT', 3),
(6, 'Frank', 'HR', 1);

SELECT E1.EmpName As [EmpName], E2.EmpName As [ManagerName],
	   E1.Department As [EmpDept], E2.Department As [ManagerDept]
FROM
Employee AS E1
Left Outer Join
Employee AS E2
On
E1.ManagerID = E2.EmpID -- foreign key element on left


  --------------(HARD LEVEL)--------------
  --(B) part
  -- Create Year_tbl (holds actual NPV values)
  CREATE TABLE Year_tbl (
      ID INT,
      YEAR INT,
      NPV INT
  );

  -- Create Queries table (requested values)
  CREATE TABLE Queries (
      ID INT,
      YEAR INT
  );

  INSERT INTO Year_tbl (ID, YEAR, NPV)
  VALUES
  (1, 2018, 100),
  (7, 2020, 30),
  (13, 2019, 40),
  (1, 2019, 113),
  (2, 2008, 121),
  (3, 2009, 12),
  (11, 2020, 99),
  (7, 2019, 0);

  INSERT INTO Queries (ID, YEAR)
  VALUES
  (1, 2019),
  (2, 2008),
  (3, 2009),
  (7, 2018),
  (7, 2019),
  (7, 2020),
  (13, 2019);

  SELECT Q.ID, Q.YEAR, ISNULL(Y.NPV,0) --  replace null with 0 on workbench IFNULL
  FROM Queries AS Q
  LEFT OUTER JOIN
  Year_tbl AS Y
  ON
  Q.ID = Y.ID
  AND
  Q.YEAR = Y.YEAR

