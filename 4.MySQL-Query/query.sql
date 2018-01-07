/*
* Write a MYSQL query that finds all the users from Database1 Users
* table that matches the email of Database2 Staff_users table.
*/

SELECT
  `Users`.`user_name` AS 'User',
  `Staff_users`.`email` AS 'Email'
FROM
  `Database1`.`Users`
INNER JOIN
  `Database2`.`Staff_users` ON `Users`.`email` = `Staff_users`.`email`
