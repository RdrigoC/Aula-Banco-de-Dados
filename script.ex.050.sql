SET GLOBAL log_bin_trust_function_creators =1;
DROP DATABASE IF EXISTS DBEXERCICIO050;
CREATE DATABASE DBEXERCICIO050;
USE DBEXERCICIO050;

DELIMITER $$

CREATE FUNCTION FN_ADICAO (pNUMERO_A NUMERIC(8,2), pNUMERO_B NUMERIC(8,2))
RETURNS NUMERIC(8,2)
BEGIN
	DECLARE vRESULTADO NUMERIC(8,2);
    SET vRESULTADO = pNUMERO_A + pNUMERO_B;
    RETURN vRESULTADO;


END $$

DELIMITER ;

SELECT FN_ADICAO(3,2);

DELIMITER $$

CREATE FUNCTION FN_SUBTRACAO (pNUMERO_A NUMERIC(8,2), pNUMERO_B NUMERIC(8,2))
RETURNS NUMERIC(8,2)
BEGIN
	DECLARE vRESULTADO NUMERIC(8,2);
    SET vRESULTADO = pNUMERO_A - pNUMERO_B;
    RETURN vRESULTADO;


END $$

DELIMITER ;

SELECT FN_SUBTRACAO(3,2);

DELIMITER $$

CREATE FUNCTION FN_MULTIPLICACAO (pNUMERO_A NUMERIC(8,2), pNUMERO_B NUMERIC(8,2))
RETURNS NUMERIC(8,2)
BEGIN
	DECLARE vRESULTADO NUMERIC(8,2);
    SET vRESULTADO = pNUMERO_A * pNUMERO_B;
    RETURN vRESULTADO;


END $$

DELIMITER ;

SELECT FN_MULTIPLICACAO(3,2);

DELIMITER $$

CREATE FUNCTION FN_DIVISAO (pNUMERO_A NUMERIC(8,2), pNUMERO_B NUMERIC(8,2))
RETURNS NUMERIC(8,2)
BEGIN
	DECLARE vRESULTADO NUMERIC(8,2);
    SET vRESULTADO = pNUMERO_A / pNUMERO_B;
    RETURN vRESULTADO;


END $$

DELIMITER ;

SELECT FN_DIVISAO(3,2);

DELIMITER $$
CREATE FUNCTION FN_CALCULADORA (pNUMERO_A NUMERIC(8,2), pNUMERO_B NUMERIC(8,2), pOPERADOR CHAR(1))
RETURNS NUMERIC(8,2)
BEGIN
	DECLARE vRESULTADO NUMERIC(8,2);
    CASE pOPERADOR
		WHEN '+' THEN SET vRESULTADO = FN_ADICAO(pNUMERO_A, pNUMERO_b);
        WHEN '-' THEN SET vRESULTADO = FN_SUBTRACAO(pNUMERO_A, pNUMERO_b);
        WHEN '*' THEN SET vRESULTADO = FN_MULTIPLICACAO(pNUMERO_A, pNUMERO_b);
        WHEN '/' THEN SET vRESULTADO = FN_DIVISAO(pNUMERO_A, pNUMERO_b);
        END CASE;
        RETURN vRESULTADO;
END $$
DELIMITER ;

SELECT
FN_CALCULADORA(8,2,'/');


DELIMITER $$

CREATE FUNCTION FN_NIVER (pNUMERO_A NUMERIC(8,2), pNUMERO_B NUMERIC(8,2))
RETURNS NUMERIC(8,2)
BEGIN
	DECLARE vRESULTADO NUMERIC(8,2);
    SET vRESULTADO = pNUMERO_A - pNUMERO_B;
    RETURN vRESULTADO;


END $$

DELIMITER ;

SELECT FN_NIVER(3,2);

