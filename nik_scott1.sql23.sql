create table products_table
(
    prod_id number(3) not null,
    prod_name varchar2(30) not null,
    prod_desc varchar2(30),
    prod_qty number(5),
    prod_pur_price number(8,2),
    prod_sell_price number(8,2),
    purc_dt date,
    constraint pk_prods_id primary key(prod_id)
    );
    
create table customers_table
(
    cust_id number(3) not null,
    cust_name varchar2(30) not null,
    cust_add varchar2(30) not null,
    cust_email varchar(30),
    cust_phn_no number(15),
    constraint pk_custs_id primary key(cust_id)
    );
    
create table sales_invoice_header_table
(
    invc_id varchar2(10) not null,
    total_price number(8,2),
    header_disc number(8,2),
    invc_dt date,
    constraint pk_inv_id primary key(invc_id)
    );
    
create table sales_invoice_details_table
(
    invc_id varchar2(10) not null,
    line_no number(10),
    prod_id number(3) not null,
    Qty number(3),
    price number(8,2),
    discount number(8,2),
    sell_price number(8,2),
    constraint fk_inv_id foreign key (invc_id) references sales_invoice_header_table(invc_id),
    constraint fk_prods_id foreign key (prod_id) references products_table(prod_id)
    );
select*from sales_invoice_details_table;
select*from sales_invoice_header_table;