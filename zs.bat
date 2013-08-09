@ECHO off
REM zf show version
(if "%1" == "" GOTO MSG)

SET PHP_BIN=php.exe

SET PHP_DIR=%~dp0

GOTO RUN

:RUN


php %PHP_DIR%\zf.php create controller %1 1 %2

php %PHP_DIR%\zf.php create action list %1 1 %2

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

:MSG
echo zs [controller] [module]