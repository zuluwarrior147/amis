INSERT INTO ROLE(ROLE_ID, ROLE_NAME)  VALUES(1, 'ROLE_ADMIN');
INSERT INTO ROLE(ROLE_ID, ROLE_NAME)  VALUES(2, 'ROLE_USER');

INSERT INTO USERS(EMAIL, FIRST_NAME, LAST_NAME, PASSWORD,ROLE_ID)
VALUES('admin@com.ua','Clint','Eastwood','$2a$10$5eGSathjYBVOjnJp0ySl8ejaC5jMY11zg.sKEv1ruTYMJLXTASnme', 1);

INSERT INTO USERS(EMAIL, FIRST_NAME, LAST_NAME, PASSWORD,ROLE_ID)
VALUES('test1@com.ua','Aureliano','Hose','$2a$10$qEIYUvfXyQlXK92MC9dgCeAOwIpQChOahFLp4aE4URLaI/EBcxQK2', 2);

INSERT INTO USERS(EMAIL, FIRST_NAME, LAST_NAME, PASSWORD,ROLE_ID)
VALUES('test2@com.ua','Arcadio','Hose','$2a$10$GcB6gphviHZgHBdUG5bznOKRHTn1t7hEyK/J.gNVBhIhAnQyxL3iK', 2);

INSERT INTO USERS(EMAIL, FIRST_NAME, LAST_NAME, PASSWORD,ROLE_ID)
VALUES('test3@com.ua','Ann','Hall','$2a$10$qVE7vv8YCORhpiMbXRlYXOGUTJNTD5xs/OK8r6526rle1lmPIr4oO', 2);

INSERT INTO USERS(EMAIL, FIRST_NAME, LAST_NAME, PASSWORD,ROLE_ID)
VALUES('test4@com.ua','Marie','Cassat','$2a$10$w3CStI86dtCJrCoFvW1MtOGuAOBz6CxHC636qHNAZHuWoQTeiPkVW', 2);

INSERT INTO THEATRE(TITLE, LOCATION)
VALUES('Grand Theatre', 'Viena');

INSERT INTO PERFORMANCE(TITLE, DESCRIPTION, DURATION, PERFORMANCE_DATE, AVAILABLE_PLACES, THEATRE_ID)
VALUES('Romeo and Juliett', 'Love story', '2h 20m', TO_DATE('2018/05/03 21:02:44', 'yyyy/mm/dd hh24:mi:ss'), 70, 1);

INSERT INTO PERFORMANCE(TITLE, DESCRIPTION, DURATION, PERFORMANCE_DATE, AVAILABLE_PLACES, THEATRE_ID)
VALUES('100 THOUSANDS','Comedy', '1h 40m', TO_DATE('2018/01/12 21:21:44', 'yyyy/mm/dd hh24:mi:ss'), 50, 1);

INSERT INTO PERFORMANCE(TITLE, DESCRIPTION, DURATION, PERFORMANCE_DATE, AVAILABLE_PLACES, THEATRE_ID)
VALUES('Nutckracker','The Nutcracker and the Mouse King', '2h 30m', TO_DATE('2018/01/01 21:21:44', 'yyyy/mm/dd hh24:mi:ss'), 60, 1);

INSERT INTO PERFORMANCE(TITLE, DESCRIPTION, DURATION, PERFORMANCE_DATE, AVAILABLE_PLACES, THEATRE_ID)
VALUES('Swan Lake','Composed by Pyotr Ilyich Tchaikovsky', '2h 45m', TO_DATE('2018/02/15 21:21:44', 'yyyy/mm/dd hh24:mi:ss'), 90, 1);

CALL reservation_package.add_reservation(1, 1, 1, 2);
CALL reservation_package.add_reservation(1, 2, 1, 2);
CALL reservation_package.add_reservation(1, 3, 1, 2);
CALL reservation_package.add_reservation(1, 4, 1, 2);

CALL reservation_package.add_reservation(1, 1, 2, 3);
CALL reservation_package.add_reservation(1, 2, 2, 3);
CALL reservation_package.add_reservation(1, 3, 2, 3);
CALL reservation_package.add_reservation(1, 4, 2, 3);

CALL reservation_package.add_reservation(1, 1, 3, 4);
CALL reservation_package.add_reservation(1, 2, 3, 4);
CALL reservation_package.add_reservation(1, 3, 3, 4);
CALL reservation_package.add_reservation(1, 4, 3, 4);
COMMIT;