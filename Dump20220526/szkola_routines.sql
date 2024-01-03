CREATE DATABASE  IF NOT EXISTS `szkola` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `szkola`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: szkola
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `uczniowie_k_nie_zdali`
--

DROP TABLE IF EXISTS `uczniowie_k_nie_zdali`;
/*!50001 DROP VIEW IF EXISTS `uczniowie_k_nie_zdali`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `uczniowie_k_nie_zdali` AS SELECT 
 1 AS `id_ucznia`,
 1 AS `nazwisko`,
 1 AS `imie`,
 1 AS `id_klasy`,
 1 AS `id_przedmiotu`,
 1 AS `ocena`,
 1 AS `ilosc nieznadych przedmiotow`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `uczniowie_ze_stypendium`
--

DROP TABLE IF EXISTS `uczniowie_ze_stypendium`;
/*!50001 DROP VIEW IF EXISTS `uczniowie_ze_stypendium`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `uczniowie_ze_stypendium` AS SELECT 
 1 AS `NAZWISKO`,
 1 AS `IMIE`,
 1 AS `ID_KLASY`,
 1 AS `SREDNIA_OCEN`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `uczestnicy_kol`
--

DROP TABLE IF EXISTS `uczestnicy_kol`;
/*!50001 DROP VIEW IF EXISTS `uczestnicy_kol`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `uczestnicy_kol` AS SELECT 
 1 AS `id_kola`,
 1 AS `nazwa`,
 1 AS `id_nauczyciela`,
 1 AS `id_ucznia`,
 1 AS `nazwisko`,
 1 AS `imie`,
 1 AS `id_klasy`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `uczniowie_z_paskiem`
--

DROP TABLE IF EXISTS `uczniowie_z_paskiem`;
/*!50001 DROP VIEW IF EXISTS `uczniowie_z_paskiem`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `uczniowie_z_paskiem` AS SELECT 
 1 AS `NAZWISKO`,
 1 AS `IMIE`,
 1 AS `ID_KLASY`,
 1 AS `SREDNIA_OCEN`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `uczniowie_k_nie_zdali`
--

/*!50001 DROP VIEW IF EXISTS `uczniowie_k_nie_zdali`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `uczniowie_k_nie_zdali` AS select `u`.`ID_UCZNIA` AS `id_ucznia`,`u`.`NAZWISKO` AS `nazwisko`,`u`.`IMIE` AS `imie`,`u`.`ID_KLASY` AS `id_klasy`,`o`.`ID_PRZEDMIOTU` AS `id_przedmiotu`,`o`.`OCENA` AS `ocena`,count(`o`.`OCENA`) AS `ilosc nieznadych przedmiotow` from (`uczniowie` `u` join `oceny_koncowe` `o` on((`u`.`ID_UCZNIA` = `o`.`ID_UCZNIA`))) where (`o`.`OCENA` = 1) group by `o`.`ID_UCZNIA` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `uczniowie_ze_stypendium`
--

/*!50001 DROP VIEW IF EXISTS `uczniowie_ze_stypendium`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `uczniowie_ze_stypendium` AS select `uczniowie_z_paskiem`.`NAZWISKO` AS `NAZWISKO`,`uczniowie_z_paskiem`.`IMIE` AS `IMIE`,`uczniowie_z_paskiem`.`ID_KLASY` AS `ID_KLASY`,`uczniowie_z_paskiem`.`SREDNIA_OCEN` AS `SREDNIA_OCEN` from `uczniowie_z_paskiem` where (`uczniowie_z_paskiem`.`SREDNIA_OCEN` >= 5.2) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `uczestnicy_kol`
--

/*!50001 DROP VIEW IF EXISTS `uczestnicy_kol`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `uczestnicy_kol` AS select `k`.`ID_KOLA` AS `id_kola`,`k`.`NAZWA` AS `nazwa`,`k`.`ID_NAUCZYCIELA` AS `id_nauczyciela`,`u`.`ID_UCZNIA` AS `id_ucznia`,`u`.`NAZWISKO` AS `nazwisko`,`u`.`IMIE` AS `imie`,`u`.`ID_KLASY` AS `id_klasy` from (`kola` `k` join `uczniowie` `u` on((`k`.`ID_KOLA` = `u`.`ID_KOLA`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `uczniowie_z_paskiem`
--

/*!50001 DROP VIEW IF EXISTS `uczniowie_z_paskiem`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `uczniowie_z_paskiem` AS select `uczniowie`.`NAZWISKO` AS `NAZWISKO`,`uczniowie`.`IMIE` AS `IMIE`,`uczniowie`.`ID_KLASY` AS `ID_KLASY`,`uczniowie`.`SREDNIA_OCEN` AS `SREDNIA_OCEN` from `uczniowie` where (`uczniowie`.`SREDNIA_OCEN` >= 4.75) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'szkola'
--

--
-- Dumping routines for database 'szkola'
--
/*!50003 DROP PROCEDURE IF EXISTS `dodawanie_oceny` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dodawanie_oceny`(IN id_u varchar(45), IN waga int, IN ocena int, IN id_n varchar(45))
BEGIN
insert into oceny
    values (
		(select id_ucznia 
        from uczniowie 
        where id_ucznia = id_u),
        waga,
        ocena,
        (select id_nauczyciela 
        from nauczyciele 
        where id_nauczyciela = id_n));

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `dodawanie_ucznia_do_rady` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dodawanie_ucznia_do_rady`(IN id varchar(45), IN funkcja varchar(45))
BEGIN
	insert into rada_uczniow values (
			(select id_ucznia from uczniowie where id_ucznia = id), 
            funkcja);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `dodawanie_uwagi` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dodawanie_uwagi`(IN id_uwagi varchar(45), IN id_ucz varchar(45),IN poz_neg varchar(45),IN uwaga varchar(45), IN id_n varchar(45))
BEGIN
if id_ucz = (select id_ucznia from uczniowie where id_ucznia=id_ucz) and id_n = (select id_nauczyciela from nauczyciele where id_nauczyciela=id_n)
then
	insert into uwagi 
    values (id_uwagi,
			id_ucz,
            poz_neg,
            uwaga,
            id_n);
else if id_ucz != (select id_ucznia from uczniowie where id_ucznia=id_ucz)
then
	select 'nie ma ucznia o takim id' AS 'BŁĄD';
else if id_n != (select id_nauczyciela from nauczyciele where id_nauczyciela=id_n)
then 
	select 'nie ma nauczyciela o takim id' AS 'BŁĄD';
end if;
end if;
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obl_oceny_koncowej` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obl_oceny_koncowej`(IN id_u varchar(45), IN id_n varchar(45))
BEGIN
if exists (select * from oceny_koncowe where id_ucznia = id_u and id_przedmiotu = (select id_przedmiotu 
        from nauczyciele 
        where id_nauczyciela = id_n))
then
	update oceny_koncowe
    set ocena = (select sum(waga*ocena)/sum(waga)
				from oceny
				where  id_ucznia = id_u and id_nauczyciela=id_n)
	where id_ucznia = id_u and  id_przedmiotu = (select id_przedmiotu 
													from nauczyciele 
													where id_nauczyciela = id_n);
                

else
	insert into oceny_koncowe 
    values (
		(select id_ucznia 
        from uczniowie 
        where id_ucznia = id_u),
        
        (select id_przedmiotu 
        from nauczyciele 
        where id_nauczyciela = id_n),
        
		(select sum(waga*ocena)/sum(waga)
        from oceny
        where  id_ucznia = id_u AND id_nauczyciela = id_n));
end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `przepisywanie_ucznia_do_fakultetu` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `przepisywanie_ucznia_do_fakultetu`(IN id_ucz varchar(45), IN id_f varchar(45))
BEGIN	
if id_f = (select id_fakultetu from fakultety where id_fakultetu=id_f)
then
		update uczniowie
		set  id_fakultetu =  id_fakultetu
        where id_fakultetu = id_fakultetu;
else 
	select 'nie ma takiego fakultetu' AS 'BŁĄD';
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `przepisywanie_ucznia_do_kola` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `przepisywanie_ucznia_do_kola`(IN id_ucz varchar(45), IN id_k varchar(45))
BEGIN	
if id_k = (select id_kola from kola where id_kola=id_k)
then
		update uczniowie
		set  id_kola =  id_k
        where id_ucznia = id_ucz;
else 
	select 'nie ma takiego kola' AS 'BŁĄD';
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `srednia_ocen` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `srednia_ocen`(IN id_u varchar(45))
BEGIN
	update uczniowie
    set srednia_ocen = (select avg(ocena) from oceny_koncowe where id_ucznia = id_u)
    where id_ucznia = id_u;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usuwanie_oceny` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usuwanie_oceny`(IN id_u varchar(45), IN waga_d int, IN ocena_d int, IN id_n varchar(45))
BEGIN
	delete from oceny where id_ucznia = id_u and waga = waga_d and ocena = ocena_d and id_nauczyciela = id_n;
    call obl_oceny_koncowej(id_u,id_n);
    call srednia_ocen(id_u);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usuwanie_uczniow_z_kola` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usuwanie_uczniow_z_kola`(IN id_ucz varchar(45))
BEGIN
	if id_ucz = (select id_ucznia from uczniowie where id_ucznia=id_ucz)
then
		update uczniowie
		set  id_kola =  null
        where id_ucznia = id_ucz;
else 
	select 'nie ma ucznia o takim id' AS 'BŁĄD';
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usuwanie_uwagi` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usuwanie_uwagi`(IN id_uw varchar(45))
BEGIN
delete from uwagi where id_uwagi = id_uw;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usuwanie_z_fakultetu` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usuwanie_z_fakultetu`(IN id_ucz varchar(45))
BEGIN
	if id_ucz = (select id_ucznia from uczniowie where id_ucznia=id_ucz)
then
		update uczniowie
		set  id_fakultetu =  null
        where id_ucznia = id_ucz;
else 
	select 'nie ma ucznia o takim id' AS 'BŁĄD';
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usuwanie_z_kola` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usuwanie_z_kola`(IN id_ucz varchar(45))
BEGIN
	if id_ucz = (select id_ucznia from uczniowie where id_ucznia=id_ucz)
then
		update uczniowie
		set  id_kola =  null
        where id_ucznia = id_ucz;
else 
	select 'nie ma ucznia o takim id' AS 'BŁĄD';
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usuwanie_z_rady_uczniow` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usuwanie_z_rady_uczniow`(IN id varchar(45))
BEGIN
	delete from rada_uczniow
    where id_ucznia = id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `wys_nuczycieli_przedmiotu` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `wys_nuczycieli_przedmiotu`(IN przedmiot varchar(45))
BEGIN
	select ID_NAUCZYCIELA, IMIE, NAZWISKO
	from nauczyciele
	where funkcja = 'przewodniczacy';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `zmiana_hasla_naucz` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `zmiana_hasla_naucz`(IN nowe_haslo varchar(45), IN id varchar(45) )
BEGIN
    update 	nauczyciele
    set 	haslo = nowe_haslo
    where 	id_nauczyciela = id;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `zmiana_hasla_ucz` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `zmiana_hasla_ucz`(IN nowe_haslo varchar(45), IN id varchar(45) )
BEGIN
    update 	uczniowie
    set 	haslo = nowe_haslo
    where 	id_ucznia = id;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-26 20:40:13
