# Delivery Center: Food & Goods orders in Brazil
# Data Source: https://www.kaggle.com/datasets/nosbielcs/brazilian-delivery-center

CREATE SCHEMA IF NOT EXISTS santander_coders;

CREATE TABLE IF NOT EXISTS santander_coders.channels (
  channel_id INTEGER,
  channel_name VARCHAR(50),
  channel_type VARCHAR(50),
  PRIMARY KEY (channel_id)
);

CREATE TABLE IF NOT EXISTS santander_coders.payments (
  payment_id INTEGER,
  payment_order_id INTEGER,
  payment_amount DECIMAL(10,2),
  payment_fee DECIMAL(10,2),
  payment_method VARCHAR(50),
  payment_status VARCHAR(20),
  PRIMARY KEY (payment_id)
);

CREATE TABLE IF NOT EXISTS santander_coders.drivers (
  driver_id INTEGER,
  driver_modal VARCHAR(50),
  driver_type VARCHAR(50),
  PRIMARY KEY (driver_id)
);

CREATE TABLE IF NOT EXISTS santander_coders.hubs (
  hub_id INTEGER,
  hub_name VARCHAR(50),
  hub_city VARCHAR(50),
  hub_state VARCHAR(50),
  hub_latitude DOUBLE PRECISION,
  hub_longitude DOUBLE PRECISION,
  PRIMARY KEY (hub_id)
);

CREATE TABLE IF NOT EXISTS santander_coders.deliveries (
  delivery_id INTEGER,
  delivery_order_id INTEGER,
  driver_id INTEGER,
  delivery_distance_meters INTEGER,
  delivery_status VARCHAR(50),
  PRIMARY KEY (delivery_id),
  FOREIGN KEY (driver_id) REFERENCES santander_coders.drivers (driver_id)
);

CREATE TABLE IF NOT EXISTS santander_coders.stores (
  store_id INTEGER,
  hub_id INTEGER,
  store_name VARCHAR(50),
  store_segment VARCHAR(50),
  store_plan_price DECIMAL(10,2),
  store_latitude DOUBLE PRECISION,
  store_longitude DOUBLE PRECISION,
  PRIMARY KEY (store_id),
  FOREIGN KEY (hub_id) REFERENCES santander_coders.hubs (hub_id)
);

CREATE TABLE IF NOT EXISTS santander_coders.orders (
  order_id INTEGER,
  store_id INTEGER,
  channel_id INTEGER,
  payment_order_id INTEGER,
  delivery_order_id INTEGER,
  order_status VARCHAR(30),
  order_amount DECIMAL(10,2),
  order_delivery_fee DECIMAL(10,2),
  order_delivery_cost DECIMAL(10,2),
  order_created_hour INTEGER,
  order_created_minute INTEGER,
  order_created_day INTEGER,
  order_created_month INTEGER,
  order_created_year INTEGER,
  order_moment_created TIMESTAMP,
  order_moment_accepted TIMESTAMP,
  order_moment_ready TIMESTAMP,
  order_moment_collected TIMESTAMP,
  order_moment_in_expedition TIMESTAMP,
  order_moment_delivering TIMESTAMP,
  order_moment_delivered TIMESTAMP,
  order_moment_finished TIMESTAMP,
  order_metric_collected_time DOUBLE PRECISION,
  order_metric_paused_time DOUBLE PRECISION,
  order_metric_production_time DOUBLE PRECISION,
  order_metric_walking_time DOUBLE PRECISION,
  order_metric_expediton_speed_time DOUBLE PRECISION,
  order_metric_transit_time DOUBLE PRECISION,
  order_metric_cycle_time DOUBLE PRECISION,
  PRIMARY KEY (order_id),
  FOREIGN KEY (store_id) REFERENCES santander_coders.stores (store_id),
  FOREIGN KEY (channel_id) REFERENCES santander_coders.channels (channel_id)
);

COPY santander_coders.channels FROM 'C:\ada_banco_dados\ada_banco_dados\dataset\channels.csv' DELIMITER ',' CSV HEADER;
COPY santander_coders.payments FROM 'C:\ada_banco_dados\ada_banco_dados\dataset\payments.csv' DELIMITER ',' CSV HEADER;
COPY santander_coders.drivers FROM 'C:\ada_banco_dados\ada_banco_dados\dataset\drivers.csv' DELIMITER ',' CSV HEADER;
COPY santander_coders.hubs FROM 'C:\ada_banco_dados\ada_banco_dados\dataset\hubs.csv' DELIMITER ',' CSV HEADER;
COPY santander_coders.deliveries FROM 'C:\ada_banco_dados\ada_banco_dados\dataset\deliveries.csv' DELIMITER ',' CSV HEADER;
COPY santander_coders.stores FROM 'C:\ada_banco_dados\ada_banco_dados\dataset\stores.csv' DELIMITER ',' CSV HEADER;
COPY santander_coders.orders FROM 'C:\ada_banco_dados\ada_banco_dados\dataset\orders.csv' DELIMITER ',' CSV HEADER;