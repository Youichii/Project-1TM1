
CREATE TABLE "DBA"."pixels" (
	"id" INTEGER NOT NULL DEFAULT AUTOINCREMENT,
	"couleur" CHAR(7) NOT NULL DEFAULT '#FFFFFF',
	"utilisateur" VARCHAR(20) NOT NULL DEFAULT 'original',
	"codeSecret" VARCHAR(20) NOT NULL DEFAULT 'no',
	"update_moment" "datetime" NOT NULL DEFAULT getDate(),
	CONSTRAINT "pk__pixels" PRIMARY KEY ( "id" ASC )
) IN "system";
