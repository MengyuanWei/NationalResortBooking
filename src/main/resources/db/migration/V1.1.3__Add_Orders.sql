CREATE SEQUENCE orders_id_seq;
create table orders (
   id bigint not null DEFAULT NEXTVAL('orders_id_seq'),
   order_date date NOT NULL,
   quantity numeric (3) NOT NULL,
   order_total numeric (10) NOT NULL,
   bill_address_id bigint NOT NULL references bill_address (id),
   users_id bigint NOT NULL references users (id),
   payment_id bigint NOT NULL references payments (id),
   paid_date date,
   primary key (id)
);
ALTER SEQUENCE orders_id_seq OWNED BY orders.id;
