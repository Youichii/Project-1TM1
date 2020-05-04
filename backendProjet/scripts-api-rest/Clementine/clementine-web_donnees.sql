//Service qui appelle donnees
CREATE SERVICE "serv_donnees" TYPE 'JSON' AUTHORIZATION OFF USER "DBA" URL ON METHODS 'GET' AS call proc_donnees();
