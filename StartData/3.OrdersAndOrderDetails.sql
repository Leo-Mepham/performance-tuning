DECLARE @OrderDetails TABLE
(
	OrderId INT NOT NULL,
	ProductId INT NOT NULL
);

WITH CTE
AS
(
	SELECT 
		U.Id AS UserId,
		P.Id AS ProductId,
		DATEADD(MS, ABS(CAST(CAST(NEWID() AS VARBINARY) AS INT)), U.WhenRegistered) AS WhenCreated
	FROM
		Users AS U
		INNER JOIN Products AS P
		ON LEFT(P.Name, 1) = LEFT(U.Forename, 1)
)

MERGE Orders AS TARGET
USING CTE AS SOURCE
ON 1=0
WHEN NOT MATCHED THEN
	INSERT(UserId, WhenCreated)
	VALUES(SOURCE.UserId, SOURCE.WhenCreated)
OUTPUT INSERTED.Id, SOURCE.ProductId 
INTO @OrderDetails;

INSERT INTO OrderDetails(OrderId, ProductId)
SELECT OrderId, ProductId FROM @OrderDetails;