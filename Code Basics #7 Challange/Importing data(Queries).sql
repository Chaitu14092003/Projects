CREATE TABLE dim_date (
    Date date PRIMARY KEY,
    month char(10),
    quarter varchar(10),
    fiscal_year integer
);

COPY dim_date(Date, month, quarter, fiscal_year)
FROM 'T:\Code Basics Challange 7\C7 Input Files\dataset\dim_date.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM dim_date;







CREATE TABLE dim_districts (
    dist_code varchar(10) PRIMARY KEY,
    district varchar(50)
);


COPY dim_districts(dist_code, district)
FROM 'T:\Code Basics Challange 7\C7 Input Files\dataset\dim_districts.csv' DELIMITER ',' CSV HEADER;

select * from dim_districts;




CREATE TABLE fact_stamps (
    dist_code varchar(10),
    Date date,
    documents_registered_cnt integer,
    documents_registered_rev bigint,
    estamps_challans_cnt integer,
    estamps_challans_rev bigint
);

COPY fact_stamps(dist_code, Date, documents_registered_cnt, documents_registered_rev, estamps_challans_cnt, estamps_challans_rev)
FROM 'T:\Code Basics Challange 7\C7 Input Files\dataset\fact_stamps.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM fact_stamps;









CREATE TABLE fact_transport (
    dist_code varchar(10),
    Date date,
    fuel_type_petrol integer,
    fuel_type_diesel integer,
    fuel_type_electric integer,
    fuel_type_others integer,
    vehicleClass_MotorCycle integer,
    vehicleClass_MotorCar integer,
    vehicleClass_AutoRickshaw integer,
    vehicleClass_Agriculture integer,
    vehicleClass_others integer,
    seatCapacity_1_to_3 integer,
    seatCapacity_4_to_6 integer,
    seatCapacity_above_6 integer,
    Brand_new_vehicles integer,
    Pre_owned_vehicles integer,
    category_Non_Transport integer,
    category_Transport integer
);

COPY fact_transport(dist_code, Date, fuel_type_petrol, fuel_type_diesel, fuel_type_electric, fuel_type_others,
                   vehicleClass_MotorCycle, vehicleClass_MotorCar, vehicleClass_AutoRickshaw, vehicleClass_Agriculture,
                   vehicleClass_others, seatCapacity_1_to_3, seatCapacity_4_to_6, seatCapacity_above_6,
                   Brand_new_vehicles, Pre_owned_vehicles, category_Non_Transport, category_Transport)
FROM 'T:\Code Basics Challange 7\C7 Input Files\dataset\fact_transport.csv' DELIMITER ',' CSV HEADER;

SELECT * FROM fact_transport;




CREATE TABLE fact_TS_iPASS (
    dist_code varchar(10),
    Date date,
    sector varchar(100),
    investment_in_cr numeric,
    number_of_employees integer
);

COPY fact_TS_iPASS(dist_code, date, sector, investment_in_cr, number_of_employees)
FROM 'T:\Code Basics Challange 7\C7 Input Files\dataset\fact_TS_iPASS.csv'DELIMITER ',' CSV HEADER;

SELECT * FROM fact_TS_iPASS;




























































































































































