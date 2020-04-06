
CREATE FUNCTION "DBA"."estUtilisateurValide"(in u varchar(20), in code varchar(20))
RETURNS BIT         // équivalent de boolean, 0 ou 1                        
BEGIN
    
  IF (SELECT count(*) FROM pixels WHERE utilisateur = u and codeSecret <> code) > 0 
  THEN RETURN 0;    // Il y a déjà cet utilisateur avec un autre code secret : invalide
  ELSE RETURN 1;    // utilisateur valide
  ENDIF;

END;
