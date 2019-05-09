SELECT
  OBJECT_NAME(d.object_id) AS TableName,
  d.equality_columns AS IndexColumns,
  d.included_columns AS IncludedColumns,
  s.unique_compiles AS QueryCount,
  s.user_seeks AS Seeks, 
  s.last_user_seek AS LastSeek,
  s.user_scans AS Scans, 
  s.last_user_scan AS LastScan
FROM 
	sys.dm_db_missing_index_details AS d
	INNER JOIN sys.dm_db_missing_index_groups AS g
	ON d.index_handle = g.index_handle
	INNER JOIN sys.dm_db_missing_index_group_stats AS s
	ON g.index_group_handle = s.group_handle