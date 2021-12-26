BEGIN TRANSACTION;
PRAGMA foreign_keys=on;

CREATE TABLE animals (id integer primary key autoincrement, breed varchar(32), gender text, age integer, infirm text, vaccinated text);

    INSERT INTO "animals" VALUES(NULL, 'british', 'm', 9, 'yes', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'bobtail', 'f', 4, 'yes', 'no');
    INSERT INTO "animals" VALUES(NULL, 'abyssinian', 'f', 6, 'yes', 'no');
    INSERT INTO "animals" VALUES(NULL, 'scottish', 'm', 14, 'yes', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'scottish', 'm', 15, 'no', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'british', 'f', 13, 'no', 'no');
    INSERT INTO "animals" VALUES(NULL, 'abyssinian', 'm', 20, 'no', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'scottish', 'm', 16, 'no', 'no');
    INSERT INTO "animals" VALUES(NULL, 'british', 'm', 16, 'yes', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'bobtail', 'f', 19, 'yes', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'scottish', 'm', 12, 'no', 'no');
    INSERT INTO "animals" VALUES(NULL, 'abyssinian', 'f', 13, 'no', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'bobtail', 'f', 2, 'yes', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'abyssinian', 'f', 9, 'no', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'british', 'm', 0, 'no', 'no');
    INSERT INTO "animals" VALUES(NULL, 'none', 'f', 12, 'no', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'british', 'f', 20, 'no', 'no');
    INSERT INTO "animals" VALUES(NULL, 'abyssinian', 'f', 3, 'no', 'no');
    INSERT INTO "animals" VALUES(NULL, 'none', 'f', 3, 'no', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'bobtail', 'm', 11, 'yes', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'scottish', 'f', 2, 'no', 'no');
    INSERT INTO "animals" VALUES(NULL, 'bobtail', 'f', 16, 'yes', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'bobtail', 'm', 9, 'yes', 'no');
    INSERT INTO "animals" VALUES(NULL, 'scottish', 'f', 10, 'no', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'bobtail', 'f', 11, 'yes', 'no');
    INSERT INTO "animals" VALUES(NULL, 'none', 'm', 4, 'no', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'none', 'm', 20, 'yes', 'no');
    INSERT INTO "animals" VALUES(NULL, 'mainecoon', 'm', 4, 'no', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'british', 'm', 4, 'yes', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'british', 'm', 3, 'no', 'no');
    INSERT INTO "animals" VALUES(NULL, 'abyssinian', 'm', 10, 'no', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'none', 'f', 12, 'no', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'mainecoon', 'f', 15, 'yes', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'abyssinian', 'm', 1, 'yes', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'scottish', 'm', 2, 'no', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'mainecoon', 'm', 18, 'yes', 'no');
    INSERT INTO "animals" VALUES(NULL, 'scottish', 'm', 17, 'yes', 'no');
    INSERT INTO "animals" VALUES(NULL, 'bobtail', 'f', 15, 'yes', 'no');
    INSERT INTO "animals" VALUES(NULL, 'abyssinian', 'm', 13, 'yes', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'scottish', 'f', 3, 'yes', 'no');
    INSERT INTO "animals" VALUES(NULL, 'none', 'm', 12, 'no', 'no');
    INSERT INTO "animals" VALUES(NULL, 'abyssinian', 'f', 17, 'no', 'no');
    INSERT INTO "animals" VALUES(NULL, 'british', 'm', 0, 'no', 'no');
    INSERT INTO "animals" VALUES(NULL, 'british', 'f', 6, 'yes', 'no');
    INSERT INTO "animals" VALUES(NULL, 'scottish', 'f', 10, 'no', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'scottish', 'm', 10, 'no', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'none', 'f', 16, 'yes', 'no');
    INSERT INTO "animals" VALUES(NULL, 'bobtail', 'm', 10, 'no', 'no');
    INSERT INTO "animals" VALUES(NULL, 'mainecoon', 'f', 16, 'no', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'abyssinian', 'm', 17, 'yes', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'foxhound', 'm', 4, 'yes', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'corgi', 'f', 18, 'no', 'no');
    INSERT INTO "animals" VALUES(NULL, 'none', 'f', 8, 'yes', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'none', 'f', 0, 'no', 'no');
    INSERT INTO "animals" VALUES(NULL, 'terrier', 'f', 14, 'no', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'spaniel', 'm', 5, 'no', 'no');
    INSERT INTO "animals" VALUES(NULL, 'foxhound', 'm', 9, 'no', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'collie', 'f', 2, 'no', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'spaniel', 'm', 9, 'yes', 'no');
    INSERT INTO "animals" VALUES(NULL, 'terrier', 'f', 20, 'yes', 'no');
    INSERT INTO "animals" VALUES(NULL, 'spaniel', 'f', 15, 'no', 'no');
    INSERT INTO "animals" VALUES(NULL, 'spaniel', 'f', 20, 'yes', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'none', 'f', 20, 'yes', 'no');
    INSERT INTO "animals" VALUES(NULL, 'none', 'm', 3, 'no', 'no');
    INSERT INTO "animals" VALUES(NULL, 'foxhound', 'f', 10, 'yes', 'no');
    INSERT INTO "animals" VALUES(NULL, 'collie', 'm', 4, 'yes', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'spaniel', 'f', 15, 'yes', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'collie', 'f', 10, 'yes', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'spaniel', 'f', 5, 'yes', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'none', 'm', 5, 'no', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'spaniel', 'f', 7, 'no', 'no');
    INSERT INTO "animals" VALUES(NULL, 'corgi', 'm', 13, 'yes', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'corgi', 'm', 12, 'no', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'spaniel', 'f', 2, 'no', 'no');
    INSERT INTO "animals" VALUES(NULL, 'spaniel', 'f', 5, 'no', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'corgi', 'm', 5, 'yes', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'corgi', 'm', 3, 'no', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'foxhound', 'f', 5, 'no', 'no');
    INSERT INTO "animals" VALUES(NULL, 'corgi', 'f', 4, 'no', 'no');
    INSERT INTO "animals" VALUES(NULL, 'foxhound', 'm', 19, 'yes', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'terrier', 'f', 16, 'yes', 'no');
    INSERT INTO "animals" VALUES(NULL, 'corgi', 'f', 15, 'yes', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'spaniel', 'm', 14, 'yes', 'no');
    INSERT INTO "animals" VALUES(NULL, 'corgi', 'f', 14, 'yes', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'corgi', 'm', 11, 'yes', 'no');
    INSERT INTO "animals" VALUES(NULL, 'foxhound', 'm', 0, 'no', 'no');
    INSERT INTO "animals" VALUES(NULL, 'corgi', 'f', 11, 'no', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'collie', 'f', 15, 'yes', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'corgi', 'm', 1, 'yes', 'no');
    INSERT INTO "animals" VALUES(NULL, 'corgi', 'm', 6, 'yes', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'none', 'f', 12, 'yes', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'spaniel', 'f', 17, 'no', 'no');
    INSERT INTO "animals" VALUES(NULL, 'collie', 'f', 5, 'yes', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'none', 'f', 8, 'no', 'no');
    INSERT INTO "animals" VALUES(NULL, 'corgi', 'm', 4, 'no', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'foxhound', 'm', 7, 'yes', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'collie', 'm', 0, 'yes', 'no');
    INSERT INTO "animals" VALUES(NULL, 'none', 'f', 20, 'yes', 'no');
    INSERT INTO "animals" VALUES(NULL, 'spaniel', 'm', 20, 'yes', 'yes');
    INSERT INTO "animals" VALUES(NULL, 'spaniel', 'f', 3, 'no', 'no');
COMMIT;
