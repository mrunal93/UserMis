@echo off
@echo Executing My Table Query
SQLCMD -s (LocalDB)\MSSQLLocalDB -d MIS -E -i "C:\Users\Admin\Documents\User__Mis\BatchFile\CreateTable.sql"
PAUSE