USE master
GO
EXEC sp_sqljdbc_xa_install
GO
EXEC sp_grantdbaccess 'SQL_USER', 'KEYCLOAK_ROLE'
GO
EXEC sp_addrolemember [SqlJDBCXAUser], 'KEYCLOAK_ROLE'
