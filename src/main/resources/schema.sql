drop table if exists oauth_client_details;
create table oauth_client_details (
  client_id VARCHAR(255) PRIMARY KEY,
  resource_ids VARCHAR(255),
  client_secret VARCHAR(255),
  scope VARCHAR(255),
  authorized_grant_types VARCHAR(255),
  web_server_redirect_uri VARCHAR(255),
  authorities VARCHAR(255),
  access_token_validity INTEGER,
  refresh_token_validity INTEGER,
  additional_information VARCHAR(4096),
  autoapprove VARCHAR(255)
);
create table if not exists oauth_client_token (
  token_id VARCHAR(255),
  token LONG VARBINARY,
  authentication_id VARCHAR(255) PRIMARY KEY,
  user_name VARCHAR(255),
  client_id VARCHAR(255)
);

create table if not exists oauth_access_token (
  token_id VARCHAR(255),
  token LONG VARBINARY,
  authentication_id VARCHAR(255) PRIMARY KEY,
  user_name VARCHAR(255),
  client_id VARCHAR(255),
  authentication LONG VARBINARY,
  refresh_token VARCHAR(255)
);

create table if not exists oauth_refresh_token (
  token_id VARCHAR(255),
  token LONG VARBINARY,
  authentication LONG VARBINARY
);

create table if not exists oauth_code (
  code VARCHAR(255), authentication LONG VARBINARY
);

create table if not exists oauth_approvals (
	userId VARCHAR(255),
	clientId VARCHAR(255),
	scope VARCHAR(255),
	status VARCHAR(10),
	expiresAt TIMESTAMP
);
--
create table if not exists ClientDetails (
  appId VARCHAR(255) PRIMARY KEY,
  resourceIds VARCHAR(255),
  appSecret VARCHAR(255),
  scope VARCHAR(255),
  grantTypes VARCHAR(255),
  redirectUrl VARCHAR(255),
  authorities VARCHAR(255),
  access_token_validity INTEGER,
  refresh_token_validity INTEGER,
  additionalInformation VARCHAR(4096),
  autoApproveScopes VARCHAR(255)
);




-- CREATE TABLE permission (
-- id BIGINT PRIMARY KEY AUTO_INCREMENT,
-- NAME VARCHAR(60) UNIQUE KEY);
--
-- INSERT INTO permission (NAME) VALUES
-- ('can_create_user'),
-- ('can_update_user'),
-- ('can_read_user'),
-- ('can_delete_user');
--
--
--
-- 		CREATE TABLE role
-- 		(id BIGINT PRIMARY KEY AUTO_INCREMENT,
-- 		NAME VARCHAR(60) UNIQUE KEY);
--
--
-- 		INSERT INTO role (NAME) VALUES
-- 		('role_admin'),('role_user');
--
--
--
--
-- 	CREATE TABLE permission_role(
--     permission_id BIGINT,
--     FOREIGN KEY(permission_id) REFERENCES permission(id),
--     role_id BIGINT,
--     FOREIGN KEY(role_id) REFERENCES role(id));
--
--     INSERT INTO permission_role (permission_id, role_id) VALUES
--     (1,1), /* can_create_user assigned to role_admin */
--     (2,1), /* can_update_user assigned to role_admin */
--     (3,1), /* can_read_user assigned to role_admin */
--     (4,1), /* can_delete_user assigned to role_admin */
--
--     (3,2);  /* can_read_user assigned to role_user */
--
--
--
--
--
-- 	CREATE TABLE user (
--     id BIGINT PRIMARY KEY AUTO_INCREMENT,
--     username VARCHAR(24) UNIQUE KEY NOT NULL,
--     PASSWORD VARCHAR(255) NOT NULL,
--     email VARCHAR(255) NOT NULL,
--     enabled BIT(1) NOT NULL,
--     account_expired BIT(1) NOT NULL,
--     credentials_expired BIT(1) NOT NULL,
--     account_locked BIT(1) NOT NULL);
--
--
--
--
--
-- 	INSERT INTO user (
--     username,PASSWORD,
--     email,enabled,account_expired,credentials_expired,account_locked) VALUES (
--     'admin','{bcrypt}$2a$10$EOs8VROb14e7ZnydvXECA.4LoIhPOoFHKvVF/iBZ/ker17Eocz4Vi',
--     'william@gmail.com',1,0,0,0),
--     ('user','{bcrypt}$2a$10$EOs8VROb14e7ZnydvXECA.4LoIhPOoFHKvVF/iBZ/ker17Eocz4Vi',
--     'john@gmail.com',1,0,0,0);
--
--
--
-- 	CREATE TABLE role_user (role_id BIGINT,FOREIGN KEY(role_id) REFERENCES role(id),
--     user_id BIGINT, FOREIGN KEY(user_id) REFERENCES user(id));
--
--
--     INSERT INTO role_user (role_id, user_id)
--     VALUES
--     (1, 1) /* role_admin assigned to admin user */,
--     (2, 2) /* role_user assigned to user user */ ;