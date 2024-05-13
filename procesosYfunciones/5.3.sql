
/*ejercicio 7.3.1*/
DROP PROCEDURE IF EXISTS suma;
delimiter //
create procedure suma(num int)
begin
    declare cont int;
    declare sum int;
    set cont = 0;
    set sum = 0;
    loop1: repeat
        set sum = sum + 1;
        set cont = cont + sum;
    until sum = num
    end repeat loop1;
    select cont;
end //
delimiter ;
call suma(10);

DROP PROCEDURE IF EXISTS suma_terminos;
DELIMITER //
CREATE PROCEDURE suma_terminos(m INT)
BEGIN
    DECLARE n INT;
    DECLARE suma DECIMAL(3, 2);
    SET suma = 0;
    SET n = 1;
    loop2: repeat
        SET suma = suma + 1 / n;
        SET n = n + 1;
        until n > m
    END repeat loop2;
    SELECT suma;
END //
DELIMITER ;
call suma_terminos(5);

/*ejercicio 7.3.2*/

DROP FUNCTION IF EXISTS primo;
DELIMITER //
CREATE FUNCTION primo(m INT)
RETURNS VARCHAR(30)
BEGIN
    DECLARE cont INT;
    DECLARE num INT;
    SET num = 1;
    set cont=0;
    if m=1 then 
    return "no es primo";
    elseif m=2 then 
    return "es primo";
    else
       loop3: REPEAT
        IF m % num = 0 THEN
            SET cont = cont + 1;
        END IF;
         IF cont > 2  THEN
        RETURN 'no es primo';
        leave loop3;
        end if;
        SET num = num + 1;
    UNTIL num > m END REPEAT loop3;
    if cont = 2 then 
        RETURN 'es primo';
    END IF;
	END IF;
END //
DELIMITER ;
 select primo(4) AS "¿primo?" 


