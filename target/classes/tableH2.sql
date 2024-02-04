CREATE TABLE IF NOT EXISTS t_inventory (
    inventory_id NUMERIC,
    inventory_name VARCHAR,
    inventory_code VARCHAR,
    inventory_amount NUMERIC,
    inventory_type NUMERIC,
    inventory_price NUMERIC,
    customer_id NUMERIC,
    PRIMARY KEY (inventory_id),
    FOREIGN KEY (customer_id) REFERENCES t_customer (customer_id)
);

CREATE TABLE IF NOT EXISTS t_customer (
    customer_id NUMERIC,
    customer_name VARCHAR,
    customer_code VARCHAR,
    customer_address VARCHAR,
    customer_amount NUMERIC,
    customer_type NUMERIC,
    PRIMARY KEY (customer_id)
);
