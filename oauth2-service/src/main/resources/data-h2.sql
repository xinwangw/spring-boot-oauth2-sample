use oauth2;
insert into `users` ( `username`, `user_password`, `enabled`) values ( 'test', '$2a$10$hTGtbco/ZqgvosoQVWdOdeKYBcJSspdPpVtfqyF7uUUBVz0UtBXWy', '1');

insert into `authorities` ( `username`, `authority`) values ( 'test', 'ROLE_MEMBER');

insert into `oauth_client_details` ( `client_id`, `resource_ids`, `client_secret`, `scope`, `authorized_grant_types`, `web_server_redirect_uri`, `authorities`, `access_token_validity`, `refresh_token_validity`, `additional_information`, `autoapprove`) 
values ( 'postman-client', 'oauth2-resource', '$2a$10$hTGtbco/ZqgvosoQVWdOdeKYBcJSspdPpVtfqyF7uUUBVz0UtBXWy', 'read,write,openid', 'password,authorization_code,refresh_token', 'https://www.getpostman.com/oauth2/callback', 'ROLE_CLIENT', '1800', null, null, null);
commit;

DELETE from oauth_refresh_token;
delete from oauth_access_token;

select token_id, token from oauth_access_token
;
select token_id, token from oauth_access_token
where token_id = '1866bdb86f0ca61f10888ec516bf0c02';