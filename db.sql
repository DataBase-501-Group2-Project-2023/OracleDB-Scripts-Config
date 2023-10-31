-- Users Table
CREATE TABLE Users (
    user_id NUMBER(10) PRIMARY KEY,
    user_name VARCHAR2(50),
    password VARCHAR2(50),
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
    user_id NUMBER(10) REFERENCES Users(user_id),
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




-- Users 테이블에 관리자 추가 (실습 및 개발용) , 추후 회원가입으로 인원 추가 Test
INSERT INTO Users (user_id, user_name, password, created_date)
VALUES (1, 'admin', 'admin@hongik.ac.kr', '1234', '2023-10-24');

-- 상점 테이블 추가 , 추후 상점 수 정하기
INSERT INTO Shops (shop_id, shop_name, location)
VALUES (1, 'emart', 'sejong');
INSERT INTO Shops (shop_id, shop_name, location)
VALUES (2, 'homeplus', 'sejong');
INSERT INTO Shops (shop_id, shop_name, location)
VALUES (3, 'hansol', 'sejong');
INSERT INTO Shops (shop_id, shop_name, location)
VALUES (4, 'gs', 'sejong');
INSERT INTO Shops (shop_id, shop_name, location)
VALUES (5, 'seveneleven', 'sejong');

-- 물건 테이블 물건 추가
INSERT INTO Products (product_id, product_name, unit, shop_id, price)
VALUES (1, '귤', 'KG', 1, 8000);
INSERT INTO Products (product_id, product_name, unit, shop_id, price)
VALUES (2, '사과', 'KG', 1, 7000);
INSERT INTO Products (product_id, product_name, unit, shop_id, price)
VALUES (3, '포도', 'KG', 1, 9000);

-- 평균 물건 시세 테이블에 추가
INSERT INTO AverageProductPrices (product_id, average_price)
VALUES (1, 8340.00);
INSERT INTO AverageProductPrices (product_id, average_price)
VALUES (2, 7340.00);
INSERT INTO AverageProductPrices (product_id, average_price)
VALUES (3, 8970.00);

