   

CREATE TABLE xxnyb_constraints_test_name (
    sno             NUMBER,
    constraint_name VARCHAR2(50) NOT NULL,
    comments        VARCHAR2(500)
);

desc xxnyb_constraints_test_name;

INSERT INTO xxnyb_constraints_test_name VALUES ( 1,
                                            'Not Null',
                                            'It should not allow NULL values' );

COMMIT;

SELECT
    *
FROM
    xxnyb_constraints_test_name;

INSERT INTO xxnyb_constraints_test_name (
    sno,
    comments
) VALUES ( 2,
           'No comments' );    
    
           
--UNIQUE
--Add UNIQUE constraint on sno column from xxnyb_constraints_test_name

ALTER TABLE xxnyb_constraints_test_name
MODIFY sno number UNIQUE;

desc xxnyb_constraints_test_name;

INSERT INTO xxnyb_constraints_test_name VALUES ( 2,
                                            'Unique',
                                            'It wont allow Duplicate values' );
commit;      

select * from xxnyb_constraints_test_name ;

INSERT INTO xxnyb_constraints_test_name VALUES ( 2,
                                            'Unique',
                                            'It wont allow Duplicate values' ); 


DELETE FROM product;

CREATE TABLE  name_chandu (
    p_id    NUMBER,
    p_name  VARCHAR2(50),
    p_compy VARCHAR2(20) NOT NULL
);

CREATE TABLE stock_chandu (
    sid    NUMBER,
    sname  VARCHAR2(50) unique,
    scompy VARCHAR2(20) NOT NULL
);

INSERT INTO stock_chandu VALUES ( 1,
                           'chandu',
                           'kandukuri' );

COMMIT;

INSERT INTO stock_chandu VALUES ( 1,
                           'chandrashekar',
                           'kandukuri' );


desc stock_chandu;

