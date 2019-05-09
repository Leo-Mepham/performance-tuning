SELECT COUNT(*)
FROM Users
WHERE Country = 'United States';

SELECT COUNT(*)
FROM Users
WHERE Country = 'United States'
AND WhenRegistered > DATEADD(MONTH, -2, GETUTCDATE());


SELECT COUNT(*)
FROM Users
WHERE WhenRegistered > DATEADD(MONTH, -2, GETUTCDATE());
	