# Module_popup_age_check_Simtech
       Работа выполнялась на ноутбуке с операционной системой macOS (Monterey (версия 12.5.1))
Apache/2.4.46 (Unix) OpenSSL/1.0.2u PHP/7.4.21 mod_wsgi/3.5 Python/2.7.18 mod_fastcgi/mod_fastcgi-SNAP-0910052141 mod_perl/2.0.11 Perl/v5.30.1
Версия клиента базы данных: libmysql - mysqlnd 7.4.21
Был использован софт mamp, в который уже был включен Apache, MySQL, PHP. 
PHP расширение: mysqli 
Версия PHP: 7.4.21 
Bерсия phpMyAdmin: 5.1.1
Codeception 4.2.2
Cs-cart версия 4.15.2 ru


                Как развернуть ваше приложение на новый магазин CS-Cart:

1. Перейдите по ссылке https://github.com/rafaelevna13/Module_popup_age_check_Simtech для проверки работы модуля.
        В ветке age_checker расположены все коммиты с файлами 
        Для удобства можно скачать архив со всеми файлами из ветки download_module 
2. Откройте файл "local_conf.php" и проверьте чтобы данные соответствовали вашим параметрам: db_host, db_name, db_user, db_password.
3. Откройте cs-cart и перейдите в панель администрирования вашего магазина
        Доп(Номер лицензии: CS-ULT-RUS-A668-P8OS-KA35-I66R)
4. В шапке выберите "Add-ons" -> "Manage add-ons" -> "Cs-cart"
5. Нажмите на значок шестеренку и выберите "Manual installation"
6. Выберите "Local" и загрузите скаченный файл 
7. После загрузки установите "install" модуль "Popup_age_check" из списка предложеных модулей 
8. Перейдите на страницу витрины
9. Все! Теперь вы можете проверить работу всплывающего окна