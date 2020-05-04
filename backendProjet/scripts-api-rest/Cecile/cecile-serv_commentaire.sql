create service "serv_com"
TYPE 'JSON' 
       AUTHORIZATION OFF 
       USER "DBA" 
       URL ON 
       METHODS 'GET' 
AS call proc_com(:new_comm,:new_auteur,:utilisateur)
