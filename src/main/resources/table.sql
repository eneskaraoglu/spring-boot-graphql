CREATE TABLE IF NOT EXISTS  public.t_inventory (
	inventory_id numeric NULL,
	inventory_name varchar NULL,
	inventory_code varchar NULL,
	inventory_amount numeric NULL,
	inventory_type numeric NULL,
	inventory_price numeric NULL,
	customer_id numeric NULL,
	CONSTRAINT t_inventory_pk PRIMARY KEY (inventory_id),
    CONSTRAINT fk_customer_id FOREIGN KEY (customer_id) REFERENCES public.t_customer (customer_id)
);

CREATE TABLE IF NOT EXISTS  public.t_customer (
	customer_id numeric NULL,
	customer_name varchar NULL,
	customer_code varchar NULL,
	customer_address varchar NULL,
	customer_amount numeric NULL,
	customer_type numeric NULL,
	CONSTRAINT t_customer_pk PRIMARY KEY (customer_id)
);

