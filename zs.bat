@ECHO off
REM zf show version
(if "%1" == "" GOTO MSG)

GOTO RUN

:MSG
echo "geo <name> <module>"
GOTO FIM

:RUN
php %PHP_DIR%\zf.php create controller %1 1 %2

php %PHP_DIR%\zf.php create action edit %1 1 %2

php %PHP_DIR%\zf.php create action update %1 1 %2

php %PHP_DIR%\zf.php create action delete %1 1 %2

php %PHP_DIR%\zf.php create action new %1 1 %2

php %PHP_DIR%\zf.php create action create %1 1 %2

php %PHP_DIR%\zf.php create form %1 %2

php %PHP_DIR%\zf.php create model %1 %2

GOTO FIM

:FIM
ECHO.
echo -----------------------------------------------------
ECHO.
echo Process Sucessfull. The Controller %1, Actions [index, edit, update, delete, new, create], Form %1, Model %1  are created in Module %2