


CREATE TABLE tb_matriculacion(

    id_matricula              INT    ( 11)  NOT NULL AUTO_INCREMENT PRIMARY KEY,
	apellidos_nombres         VARCHAR(255)	NULL,
	ci                        VARCHAR(255)	NULL,
	celular                   VARCHAR(255)	NULL,
	correo                    VARCHAR(255)	NULL,
	ano_for                   VARCHAR(255)	NULL,
	especialidad              VARCHAR(255)	NULL,
	tipo_matriculacion        VARCHAR(255)	NULL,
	nro_deposito_matricual    VARCHAR(255)	NULL,
	foto_deposito_matricula   TEXT	NULL,
    documentos                TEXT	NULL,

	fyh_creacion              DATETIME	    NULL,
	user_creacion             VARCHAR(255)  NULL,
    fyh_actualizacion	      DATETIME	    NULL,
    user_actualizacion	      VARCHAR(255)  NULL,
	fyh_eliminacion		      DATETIME      NULL,
	user_eliminacion	      VARCHAR(255)  NULL,
	estado			          VARCHAR(10) 	NULL

);
