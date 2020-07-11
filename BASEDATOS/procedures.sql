/*ADMINISTRATIVO*/
CREATE PROCEDURE Cadmin
@ida_c int,
@noma_c varchar(50),
@tela_c varchar(10),
@cargoa_c varchar(20)
AS
INSERT into administrativo VALUES (@ida_c, @noma_c, @tela_c, @cargoa_c);

CREATE PROCEDURE Radmin
@ida_c int
AS
select * from administrativo where IDA=@ida_c;

CREATE PROCEDURE Uadmin
@ida1_c int,
@ida2_c int,
@noma_c varchar(50),
@tela_c varchar(10),
@cargoa_c varchar(20)
AS
update administrativo set IDA=@ida2_c, noma=@noma_c, tela=@tela_c, cargoa=@cargoa_c where ida=@ida1_c;

CREATE PROCEDURE Dadmin
@ida_c int
AS
delete from administrativo where ida=@ida_c;

/*ESTUDIANTE*/
CREATE PROCEDURE Cest
@ide_c int,
@nome_c varchar(50),
@tele_c varchar(10),
@programa_c varchar(20)
AS
INSERT into estudiante VALUES (@ide_c, @nome_c, @tele_c, @programa_c);

CREATE PROCEDURE Rest
@ide_c int
AS
select * from estudiante where ide=@ide_c;

CREATE PROCEDURE Uest
@ide1_c int,
@ide2_c int,
@nome_c varchar(50),
@tele_c varchar(10),
@programa_c varchar(20)
AS
update estudiante set ide=@ide2_c, nome=@nome_c, tele=@tele_c, programa=@programa_c where ide=@ide1_c;

CREATE PROCEDURE Dest
@ide_c int
AS
delete from estudiante where ide=@ide_c;

/*PROFESOR*/
CREATE PROCEDURE Cprof
@idp_c int,
@nomp_c varchar(50),
@telp_c varchar(10),
@cargop_c varchar(20)
AS
INSERT into profesor VALUES (@idp_c, @nomp_c, @telp_c, @cargop_c);

CREATE PROCEDURE Rprof
@idp_c int
AS
select * from profesor where idp=@idp_c;

CREATE PROCEDURE Uprof
@idp1_c int,
@idp2_c int,
@nomp_c varchar(50),
@telp_c varchar(10),
@cargop_c varchar(20)
AS
update profesor set idp=@idp2_c, nomp=@nomp_c, telp=@telp_c, cargoP= @cargop_c where idp=@idp1_c;

CREATE PROCEDURE Dprof
@idp_c int
AS
delete from profesor where idp=@idp_c;

