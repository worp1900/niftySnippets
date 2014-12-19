
@ECHO OFF

SET schema=<enterYourDbSchemaNameHere>
SET mysqlPath=<C:\path\to\MySQL\bin>
SET user=<dbUserName>
SET pass=<dbPw>
SET mysql=%mysqlPath%\mysql.exe -p%pass% -u %user% %schema%

ECHO SELECT TABLE_NAME, CONSTRAINT_NAME ^
	FROM information_schema.TABLE_CONSTRAINTS ^
	WHERE CONSTRAINT_TYPE='FOREIGN KEY' AND ^
	TABLE_SCHEMA='%schema%'; | %mysql% > output.txt

for /f "tokens=*" %%a in (output.txt) do call :dropForeignKey %%a
goto :deleteTempFile

:dropForeignKey
set "tableName=%1"
set "fkName=%2"

echo %tableName%
echo %fkName%

if "%tableName%"=="" ( goto :eof )
if "%tableName%"=="TABLE_NAME" ( goto :eof )

echo dropping FK %fkName% from table %tableName%

echo ALTER TABLE %tableName% DROP FOREIGN KEY %fkName%; | %mysql% 

goto :eof

:deleteTempFile
del output.txt

:eof