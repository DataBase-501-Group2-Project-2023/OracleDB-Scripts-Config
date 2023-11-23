-- Users Table
CREATE TABLE Users (
    user_id VARCHAR2(50) PRIMARY KEY,
    user_name VARCHAR2(50),
    user_phone VARCHAR2(50),
    user_email VARCHAR2(100),
    user_city VARCHAR2(100),
    user_password VARCHAR2(2000),
    created_date DATE
);

-- 상점 (Shops) 테이블
CREATE TABLE Shops (
    shop_id NUMBER(10) PRIMARY KEY,
    shop_name VARCHAR2(100),
    location VARCHAR2(50) -- 시/도 단위로 대입
);

-- 물건 (Products) 테이블
CREATE TABLE Products (
    product_id NUMBER(10) PRIMARY KEY,
    product_name VARCHAR2(50),
    unit VARCHAR2(10),
    shop_id NUMBER(10) REFERENCES Shops(shop_id),
    price NUMBER(7)  
);

-- 거래 (Transactions) 테이블
CREATE TABLE Transactions (
    transaction_id NUMBER(10) PRIMARY KEY,
    user_id VARCHAR2(50) REFERENCES Users(user_id),
    shop_id NUMBER(10) REFERENCES Shops(shop_id),
    product_id NUMBER(10) REFERENCES Products(product_id),
    purchase_date DATE,
    purchase_price NUMBER(10)
);

-- 평균 물건 시세 (AverageProductPrices) 테이블
CREATE TABLE AverageProductPrices (
    product_id NUMBER(10) PRIMARY KEY REFERENCES Products(product_id),
    average_price NUMBER(10)  
);


-- 상점 테이블 추가 , 추후 상점 수 정하기
INSERT INTO Shops (shop_id, shop_name, location)
VALUES (1, 'emart', 'sejong');
INSERT INTO Shops (shop_id, shop_name, location)
VALUES (2, 'homeplus', 'sejong');
INSERT INTO Shops (shop_id, shop_name, location)
VALUES (3, 'hansol', 'sejong');
INSERT INTO Shops (shop_id, shop_name, location)
VALUES (4, 'market', 'sejong');
INSERT INTO Shops (shop_id, shop_name, location)
VALUES (5, 'costco', 'sejong');



-- 거래 테이블 추가
-- INSERT INTO Transactions (transaction_id, user_id, shop_id, product_id, purchase_date, purchase_price)
-- VALUES (1, 1, 1, 1, TO_DATE('2023-11-12', 'YYYY-MM-DD'), 2000.00);



-- 물건 테이블 물건 추가
INSERT INTO Products (product_id, product_name, unit, shop_id, price)
VALUES (1, '귤', 'KG', 1, 2000);
INSERT INTO Products (product_id, product_name, unit, shop_id, price)
VALUES (2, '사과', 'KG', 1, 3900);
INSERT INTO Products (product_id, product_name, unit, shop_id, price)
VALUES (3, '포도', 'KG', 1, 6000);
INSERT INTO Products (product_id, product_name, unit, shop_id, price)
VALUES (4, '감자', 'KG', 1, 1600);
INSERT INTO Products (product_id, product_name, unit, shop_id, price)
VALUES (5, '배추', 'KG', 1, 800);
INSERT INTO Products (product_id, product_name, unit, shop_id, price)
VALUES (6, '양파', 'KG', 1, 1200);
INSERT INTO Products (product_id, product_name, unit, shop_id, price)
VALUES (7, '갈치', 'KG', 1, 13000);
INSERT INTO Products (product_id, product_name, unit, shop_id, price)
VALUES (8, '고등어', 'KG', 1, 6000);
INSERT INTO Products (product_id, product_name, unit, shop_id, price)
VALUES (9, '닭고기', 'KG', 1, 5900);
INSERT INTO Products (product_id, product_name, unit, shop_id, price)
VALUES (10, '돼지고기', 'KG', 1, 25000);
INSERT INTO Products (product_id, product_name, unit, shop_id, price)
VALUES (11, '귤', 'KG', 2, 2300);
INSERT INTO Products (product_id, product_name, unit, shop_id, price)
VALUES (12, '사과', 'KG', 2, 3900);
INSERT INTO Products (product_id, product_name, unit, shop_id, price)
VALUES (13, '포도', 'KG', 2, 6200);
INSERT INTO Products (product_id, product_name, unit, shop_id, price)
VALUES (14, '감자', 'KG', 2, 2000);
INSERT INTO Products (product_id, product_name, unit, shop_id, price)
VALUES (15, '배추', 'KG', 2, 900);
INSERT INTO Products (product_id, product_name, unit, shop_id, price)
VALUES (16, '양파', 'KG', 2, 1600);
INSERT INTO Products (product_id, product_name, unit, shop_id, price)
VALUES (17, '갈치', 'KG', 2, 14000);
INSERT INTO Products (product_id, product_name, unit, shop_id, price)
VALUES (18, '고등어', 'KG', 2, 5900);
INSERT INTO Products (product_id, product_name, unit, shop_id, price)
VALUES (19, '닭고기', 'KG', 2, 5700);
INSERT INTO Products (product_id, product_name, unit, shop_id, price)
VALUES (20, '돼지고기', 'KG', 2, 25400);


INSERT INTO Products (product_id, product_name, unit, shop_id, price)
VALUES (21, '귤', 'KG', 3, 2200);
INSERT INTO Products (product_id, product_name, unit, shop_id, price)
VALUES (22, '사과', 'KG', 3, 3800);
INSERT INTO Products (product_id, product_name, unit, shop_id, price)
VALUES (23, '포도', 'KG', 3, 6100);
INSERT INTO Products (product_id, product_name, unit, shop_id, price)
VALUES (24, '감자', 'KG', 3, 1400);
INSERT INTO Products (product_id, product_name, unit, shop_id, price)
VALUES (25, '배추', 'KG', 3, 600);
INSERT INTO Products (product_id, product_name, unit, shop_id, price)
VALUES (26, '양파', 'KG', 3, 1400);
INSERT INTO Products (product_id, product_name, unit, shop_id, price)
VALUES (27, '갈치', 'KG', 3, 13500);
INSERT INTO Products (product_id, product_name, unit, shop_id, price)
VALUES (28, '고등어', 'KG', 3, 7000);
INSERT INTO Products (product_id, product_name, unit, shop_id, price)
VALUES (29, '닭고기', 'KG', 3, 6000);
INSERT INTO Products (product_id, product_name, unit, shop_id, price)
VALUES (30, '돼지고기', 'KG', 3, 23000);

INSERT INTO Products (product_id, product_name, unit, shop_id, price)
VALUES (31, '귤', 'KG', 4, 2200);
INSERT INTO Products (product_id, product_name, unit, shop_id, price)
VALUES (32, '사과', 'KG', 4, 3700);
INSERT INTO Products (product_id, product_name, unit, shop_id, price)
VALUES (33, '포도', 'KG', 4, 6300);
INSERT INTO Products (product_id, product_name, unit, shop_id, price)
VALUES (34, '감자', 'KG', 4, 1900);
INSERT INTO Products (product_id, product_name, unit, shop_id, price)
VALUES (35, '배추', 'KG', 4, 750);
INSERT INTO Products (product_id, product_name, unit, shop_id, price)
VALUES (36, '양파', 'KG', 4, 1300);
INSERT INTO Products (product_id, product_name, unit, shop_id, price)
VALUES (37, '갈치', 'KG', 4, 12000);
INSERT INTO Products (product_id, product_name, unit, shop_id, price)
VALUES (38, '고등어', 'KG', 4, 6000);
INSERT INTO Products (product_id, product_name, unit, shop_id, price)
VALUES (39, '닭고기', 'KG', 4, 5900);
INSERT INTO Products (product_id, product_name, unit, shop_id, price)
VALUES (40, '돼지고기', 'KG', 4, 24400);
INSERT INTO Products (product_id, product_name, unit, shop_id, price)
VALUES (41, '귤', 'KG', 5, 2100);
INSERT INTO Products (product_id, product_name, unit, shop_id, price)
VALUES (42, '사과', 'KG', 5, 3800);
INSERT INTO Products (product_id, product_name, unit, shop_id, price)
VALUES (43, '포도', 'KG', 5, 6200);
INSERT INTO Products (product_id, product_name, unit, shop_id, price)
VALUES (44, '감자', 'KG', 5, 1800);
INSERT INTO Products (product_id, product_name, unit, shop_id, price)
VALUES (45, '배추', 'KG', 5, 650);
INSERT INTO Products (product_id, product_name, unit, shop_id, price)
VALUES (46, '양파', 'KG', 5, 1500);
INSERT INTO Products (product_id, product_name, unit, shop_id, price)
VALUES (47, '갈치', 'KG', 5, 13000);
INSERT INTO Products (product_id, product_name, unit, shop_id, price)
VALUES (48, '고등어', 'KG', 5, 5800);
INSERT INTO Products (product_id, product_name, unit, shop_id, price)
VALUES (49, '닭고기', 'KG', 5, 5100);
INSERT INTO Products (product_id, product_name, unit, shop_id, price)
VALUES (50, '돼지고기', 'KG', 5, 25400);





— 평균 물건 시세 테이블에 추가
INSERT INTO AverageProductPrices (product_id, average_price)
VALUES (1, 1970);
INSERT INTO AverageProductPrices (product_id, average_price)
VALUES (2, 3570);
INSERT INTO AverageProductPrices (product_id, average_price)
VALUES (3, 5770);
INSERT INTO AverageProductPrices (product_id, average_price)
VALUES (4, 1470);
INSERT INTO AverageProductPrices (product_id, average_price)
VALUES (5, 680);
INSERT INTO AverageProductPrices (product_id, average_price)
VALUES (6, 1040);
INSERT INTO AverageProductPrices (product_id, average_price)
VALUES (7, 12350);
INSERT INTO AverageProductPrices (product_id, average_price)
VALUES (8, 5874);
INSERT INTO AverageProductPrices (product_id, average_price)
VALUES (9, 5790);
INSERT INTO AverageProductPrices (product_id, average_price)
VALUES (10, 23530);

INSERT INTO AverageProductPrices (product_id, average_price)
VALUES (11, 1970);
INSERT INTO AverageProductPrices (product_id, average_price)
VALUES (12, 3570);
INSERT INTO AverageProductPrices (product_id, average_price)
VALUES (13, 5770);
INSERT INTO AverageProductPrices (product_id, average_price)
VALUES (14, 1470);
INSERT INTO AverageProductPrices (product_id, average_price)
VALUES (15, 680);
INSERT INTO AverageProductPrices (product_id, average_price)
VALUES (16, 1040);
INSERT INTO AverageProductPrices (product_id, average_price)
VALUES (17, 12350);
INSERT INTO AverageProductPrices (product_id, average_price)
VALUES (18, 5874);
INSERT INTO AverageProductPrices (product_id, average_price)
VALUES (19, 5790);
INSERT INTO AverageProductPrices (product_id, average_price)
VALUES (20, 23530);

INSERT INTO AverageProductPrices (product_id, average_price)
VALUES (21, 1970);
INSERT INTO AverageProductPrices (product_id, average_price)
VALUES (22, 3570);
INSERT INTO AverageProductPrices (product_id, average_price)
VALUES (23, 5770);
INSERT INTO AverageProductPrices (product_id, average_price)
VALUES (24, 1470);
INSERT INTO AverageProductPrices (product_id, average_price)
VALUES (25, 680);
INSERT INTO AverageProductPrices (product_id, average_price)
VALUES (26, 1040);
INSERT INTO AverageProductPrices (product_id, average_price)
VALUES (27, 12350);
INSERT INTO AverageProductPrices (product_id, average_price)
VALUES (28, 5874);
INSERT INTO AverageProductPrices (product_id, average_price)
VALUES (29, 5790);
INSERT INTO AverageProductPrices (product_id, average_price)
VALUES (30, 23530);

INSERT INTO AverageProductPrices (product_id, average_price)
VALUES (31, 1970);
INSERT INTO AverageProductPrices (product_id, average_price)
VALUES (32, 3570);
INSERT INTO AverageProductPrices (product_id, average_price)
VALUES (33, 5770);
INSERT INTO AverageProductPrices (product_id, average_price)
VALUES (34, 1470);
INSERT INTO AverageProductPrices (product_id, average_price)
VALUES (35, 680);
INSERT INTO AverageProductPrices (product_id, average_price)
VALUES (36, 1040);
INSERT INTO AverageProductPrices (product_id, average_price)
VALUES (37, 12350);
INSERT INTO AverageProductPrices (product_id, average_price)
VALUES (38, 5874);
INSERT INTO AverageProductPrices (product_id, average_price)
VALUES (39, 5790);
INSERT INTO AverageProductPrices (product_id, average_price)
VALUES (40, 23530);
INSERT INTO AverageProductPrices (product_id, average_price)
VALUES (41, 1970);
INSERT INTO AverageProductPrices (product_id, average_price)
VALUES (42, 3570);
INSERT INTO AverageProductPrices (product_id, average_price)
VALUES (43, 5770);
INSERT INTO AverageProductPrices (product_id, average_price)
VALUES (44, 1470);
INSERT INTO AverageProductPrices (product_id, average_price)
VALUES (45, 680);
INSERT INTO AverageProductPrices (product_id, average_price)
VALUES (46, 1040);
INSERT INTO AverageProductPrices (product_id, average_price)
VALUES (47, 12350);
INSERT INTO AverageProductPrices (product_id, average_price)
VALUES (48, 5874);
INSERT INTO AverageProductPrices (product_id, average_price)
VALUES (49, 5790);
INSERT INTO AverageProductPrices (product_id, average_price)
VALUES (50, 23530);
