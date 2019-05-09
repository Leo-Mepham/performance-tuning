USE [PerformanceTuning]
GO

CREATE INDEX IX_CountryWhenRegistered
ON Users(Country, WhenRegistered);
