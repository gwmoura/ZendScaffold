#!/bin/bash
#-------------------------------------------------------------------------
PHP_DIR="@php_dir@"

if test "%1" == ""; then
	echo "zs <name> <module>"
else
	run
fi


run()
{
php $PHP_DIR/zf.php create controller %1 1 %2

php $PHP_DIR/zf.php create action list %1 1 %2

php $PHP_DIR/zf.php create action edit %1 1 %2

php $PHP_DIR/zf.php create action update %1 1 %2

php $PHP_DIR/zf.php create action delete %1 1 %2

php $PHP_DIR/zf.php create action new %1 1 %2

php $PHP_DIR/zf.php create action create %1 1 %2

php $PHP_DIR/zf.php create action search %1 1 %2

php $PHP_DIR/zf.php create form %1 %2

php $PHP_DIR/zf.php create model %1 %2

fim

}

fim()
{
echo "-----------------------------------------------------\n"
echo "Process Sucessfull. The Controller %1, Actions [index, edit, update, delete, new, create], Form %1, Model %1  are created in Module %2"
}