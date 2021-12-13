-- Создать нового пользователя и дать ему права на:

CREATE USER 'user2'@'localhost' IDENTIFIED BY 'Pass12345!';


-- 1. просмотр всех таблиц в базе данных geodata

GRANT SELECT ON geodata.* TO 'user2'@'localhost';


-- 2. добавление, обновление и удаление данных в таблице _cities базы данных geodata

GRANT INSERT, UPDATE, DELETE ON geodata._cities TO 'user2'@'localhost';

FLUSH PRIVILEGES;

