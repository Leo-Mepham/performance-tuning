USE [PerformanceTuning]
GO
CREATE NONCLUSTERED INDEX IX_Country_i_ForenameSurname
ON Users(Country)
INCLUDE (Forename, Surname)
GO
