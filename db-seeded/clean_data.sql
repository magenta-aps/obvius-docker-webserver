update users set passwd="gibberish";
update users set passwd="$1$PLlfkYGB$xiQKV/rCgQ08YgUtbcYZV0" where login='admin';

delete from login_sessions;
delete from sso_sessions;
delete from sso_tickets;
delete from admin_leftmenu_cache;
delete from apache_edit_sessions;
delete from apache_user_sessions;
delete from apachecache_cmswebtest01;
delete from apachecache_cmswebtest01_eskild;
delete from password_reset_requests;
