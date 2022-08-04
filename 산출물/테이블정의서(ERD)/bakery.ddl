DROP TABLE order_review CASCADE CONSTRAINTS;
DROP TABLE coupon CASCADE CONSTRAINTS;
DROP TABLE QnA CASCADE CONSTRAINTS;
DROP TABLE notice CASCADE CONSTRAINTS;
DROP TABLE review CASCADE CONSTRAINTS;
DROP TABLE order_item CASCADE CONSTRAINTS;
DROP TABLE orders CASCADE CONSTRAINTS;
DROP TABLE address CASCADE CONSTRAINTS;
DROP TABLE cart CASCADE CONSTRAINTS;
DROP TABLE product CASCADE CONSTRAINTS;
DROP TABLE category CASCADE CONSTRAINTS;
DROP TABLE user_info CASCADE CONSTRAINTS;

CREATE TABLE user_info(
		user_id                       		VARCHAR2(100)		 NULL ,
		user_password                 		VARCHAR2(10)		 NULL ,
		user_name                     		VARCHAR2(100)		 NULL ,
		user_email                    		VARCHAR2(100)		 NULL ,
		user_phone                    		VARCHAR2(20)		 NULL ,
		user_point                    		NUMBER(10)		 NULL 
);


CREATE TABLE category(
		category_no                   		NUMBER(10)		 NULL ,
		category_name                 		VARCHAR2(50)		 NULL 
);

DROP SEQUENCE category_category_no_SEQ;

CREATE SEQUENCE category_category_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TRIGGER category_category_no_TRG
BEFORE INSERT ON category
FOR EACH ROW
BEGIN
IF :NEW.category_no IS NOT NULL THEN
  SELECT category_category_no_SEQ.NEXTVAL INTO :NEW.category_no FROM DUAL;
END IF;
END;


CREATE TABLE product(
		p_no                          		NUMBER(10)		 NULL ,
		p_name                        		VARCHAR2(50)		 NULL ,
		p_price                       		NUMBER(10)		 NULL ,
		p_image                       		VARCHAR2(100)		 NULL ,
		p_desc                        		VARCHAR2(200)		 NULL ,
		p_click_count                 		NUMBER(10)		 NULL ,
		category_no                   		NUMBER(10)		 NULL 
);

DROP SEQUENCE product_p_no_SEQ;

CREATE SEQUENCE product_p_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TRIGGER product_p_no_TRG
BEFORE INSERT ON product
FOR EACH ROW
BEGIN
IF :NEW.p_no IS NOT NULL THEN
  SELECT product_p_no_SEQ.NEXTVAL INTO :NEW.p_no FROM DUAL;
END IF;
END;


CREATE TABLE cart(
		cart_no                       		NUMBER(10)		 NULL ,
		cart_qty                      		NUMBER(10)		 NULL ,
		user_id                       		VARCHAR2(100)		 NULL ,
		p_no                          		NUMBER(10)		 NULL 
);

DROP SEQUENCE cart_cart_no_SEQ;

CREATE SEQUENCE cart_cart_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TRIGGER cart_cart_no_TRG
BEFORE INSERT ON cart
FOR EACH ROW
BEGIN
IF :NEW.cart_no IS NOT NULL THEN
  SELECT cart_cart_no_SEQ.NEXTVAL INTO :NEW.cart_no FROM DUAL;
END IF;
END;


CREATE TABLE address(
		add_no                        		NUMBER(10)		 NULL ,
		address                       		VARCHAR2(50)		 NULL ,
		user_id                       		VARCHAR2(100)		 NULL 
);

DROP SEQUENCE address_add_no_SEQ;

CREATE SEQUENCE address_add_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TRIGGER address_add_no_TRG
BEFORE INSERT ON address
FOR EACH ROW
BEGIN
IF :NEW.add_no IS NOT NULL THEN
  SELECT address_add_no_SEQ.NEXTVAL INTO :NEW.add_no FROM DUAL;
END IF;
END;


CREATE TABLE orders(
		o_no                          		NUMBER(10)		 NULL ,
		o_desc                        		VARCHAR2(50)		 NULL ,
		o_date                        		DATE		 NULL ,
		o_price                       		NUMBER(10)		 NULL ,
		user_id                       		VARCHAR2(100)		 NULL ,
		add_no                        		NUMBER(10)		 NULL 
);

DROP SEQUENCE orders_o_no_SEQ;

CREATE SEQUENCE orders_o_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TRIGGER orders_o_no_TRG
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
IF :NEW.o_no IS NOT NULL THEN
  SELECT orders_o_no_SEQ.NEXTVAL INTO :NEW.o_no FROM DUAL;
END IF;
END;


CREATE TABLE order_item(
		oi_no                         		NUMBER(10)		 NULL ,
		oi_qty                        		NUMBER(10)		 NULL ,
		p_no                          		NUMBER(10)		 NULL ,
		o_no                          		NUMBER(10)		 NULL 
);

DROP SEQUENCE order_item_oi_no_SEQ;

CREATE SEQUENCE order_item_oi_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TRIGGER order_item_oi_no_TRG
BEFORE INSERT ON order_item
FOR EACH ROW
BEGIN
IF :NEW.oi_no IS NOT NULL THEN
  SELECT order_item_oi_no_SEQ.NEXTVAL INTO :NEW.oi_no FROM DUAL;
END IF;
END;


CREATE TABLE review(
		r_no                          		NUMBER(10)		 NULL ,
		r_title                       		VARCHAR2(100)		 NULL ,
		r_date                        		DATE		 NULL ,
		r_starGrade                   		NUMBER(10)		 NULL ,
		r_content                     		VARCHAR2(300)		 NULL ,
		user_id                       		VARCHAR2(100)		 NULL ,
		p_no                          		NUMBER(10)		 NULL 
);

DROP SEQUENCE review_r_no_SEQ;

CREATE SEQUENCE review_r_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TRIGGER review_r_no_TRG
BEFORE INSERT ON review
FOR EACH ROW
BEGIN
IF :NEW.r_no IS NOT NULL THEN
  SELECT review_r_no_SEQ.NEXTVAL INTO :NEW.r_no FROM DUAL;
END IF;
END;


CREATE TABLE notice(
		notice_no                     		NUMBER(10)		 NULL ,
		notice_title                  		VARCHAR2(100)		 NULL ,
		notice_date                   		DATE		 NULL ,
		notice_content                		VARCHAR2(200)		 NULL 
);

DROP SEQUENCE notice_notice_no_SEQ;

CREATE SEQUENCE notice_notice_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TRIGGER notice_notice_no_TRG
BEFORE INSERT ON notice
FOR EACH ROW
BEGIN
IF :NEW.notice_no IS NOT NULL THEN
  SELECT notice_notice_no_SEQ.NEXTVAL INTO :NEW.notice_no FROM DUAL;
END IF;
END;


CREATE TABLE QnA(
		qna_no                        		NUMBER(10)		 NULL ,
		user_id                       		VARCHAR2(100)		 NULL ,
		qna_title                     		VARCHAR2(100)		 NULL ,
		qna_date                      		DATE		 DEFAULT sysdate		 NULL ,
		qna_content                   		VARCHAR2(200)		 NULL ,
		qna_readcount                 		NUMBER(10)		 DEFAULT 0		 NULL ,
		groupno                       		NUMBER(10)		 NULL ,
		step                          		NUMBER(10)		 NULL ,
		depth                         		NUMBER(10)		 DEFAULT 0		 NULL 
);

DROP SEQUENCE QnA_qna_no_SEQ;

CREATE SEQUENCE QnA_qna_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TRIGGER QnA_qna_no_TRG
BEFORE INSERT ON QnA
FOR EACH ROW
BEGIN
IF :NEW.qna_no IS NOT NULL THEN
  SELECT QnA_qna_no_SEQ.NEXTVAL INTO :NEW.qna_no FROM DUAL;
END IF;
END;


CREATE TABLE coupon(
		c_no                          		NUMBER(10)		 NULL ,
		c_start_date                  		DATE		 NULL ,
		c_end_date                    		DATE		 NULL ,
		c_discount                    		NUMBER(10)		 NULL ,
		user_id                       		VARCHAR2(100)		 NULL 
);

DROP SEQUENCE coupon_c_no_SEQ;

CREATE SEQUENCE coupon_c_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;

CREATE TRIGGER coupon_c_no_TRG
BEFORE INSERT ON coupon
FOR EACH ROW
BEGIN
IF :NEW.c_no IS NOT NULL THEN
  SELECT coupon_c_no_SEQ.NEXTVAL INTO :NEW.c_no FROM DUAL;
END IF;
END;


CREATE TABLE order_review(
		r_no                          		NUMBER(10)		 NULL ,
		oi_no                         		NUMBER(10)		 NULL 
);



ALTER TABLE user_info ADD CONSTRAINT IDX_user_info_PK PRIMARY KEY (user_id);

ALTER TABLE category ADD CONSTRAINT IDX_category_PK PRIMARY KEY (category_no);

ALTER TABLE product ADD CONSTRAINT IDX_product_PK PRIMARY KEY (p_no);
ALTER TABLE product ADD CONSTRAINT IDX_product_FK0 FOREIGN KEY (category_no) REFERENCES category (category_no);

ALTER TABLE cart ADD CONSTRAINT IDX_cart_PK PRIMARY KEY (cart_no);
ALTER TABLE cart ADD CONSTRAINT IDX_cart_FK0 FOREIGN KEY (user_id) REFERENCES user_info (user_id) on delete CASCADE;
ALTER TABLE cart ADD CONSTRAINT IDX_cart_FK1 FOREIGN KEY (p_no) REFERENCES product (p_no) on delete CASCADE;

ALTER TABLE address ADD CONSTRAINT IDX_address_PK PRIMARY KEY (add_no);
ALTER TABLE address ADD CONSTRAINT IDX_address_FK0 FOREIGN KEY (user_id) REFERENCES user_info (user_id) on delete CASCADE;

ALTER TABLE orders ADD CONSTRAINT IDX_orders_PK PRIMARY KEY (o_no);
ALTER TABLE orders ADD CONSTRAINT IDX_orders_FK0 FOREIGN KEY (user_id) REFERENCES user_info (user_id);
ALTER TABLE orders ADD CONSTRAINT IDX_orders_FK1 FOREIGN KEY (add_no) REFERENCES address (add_no);

ALTER TABLE order_item ADD CONSTRAINT IDX_order_item_PK PRIMARY KEY (oi_no);
ALTER TABLE order_item ADD CONSTRAINT IDX_order_item_FK0 FOREIGN KEY (p_no) REFERENCES product (p_no);
ALTER TABLE order_item ADD CONSTRAINT IDX_order_item_FK1 FOREIGN KEY (o_no) REFERENCES orders (o_no);

ALTER TABLE review ADD CONSTRAINT IDX_review_PK PRIMARY KEY (r_no);
ALTER TABLE review ADD CONSTRAINT IDX_review_FK0 FOREIGN KEY (user_id) REFERENCES user_info (user_id) on delete set null;
ALTER TABLE review ADD CONSTRAINT IDX_review_FK1 FOREIGN KEY (p_no) REFERENCES product (p_no) on delete cascade;

ALTER TABLE notice ADD CONSTRAINT IDX_notice_PK PRIMARY KEY (notice_no);

ALTER TABLE QnA ADD CONSTRAINT IDX_QnA_PK PRIMARY KEY (qna_no);
ALTER TABLE QnA ADD CONSTRAINT IDX_QnA_FK0 FOREIGN KEY (user_id) REFERENCES user_info (user_id);

ALTER TABLE coupon ADD CONSTRAINT IDX_coupon_PK PRIMARY KEY (c_no);
ALTER TABLE coupon ADD CONSTRAINT IDX_coupon_FK0 FOREIGN KEY (user_id) REFERENCES user_info (user_id) on delete cascade;

ALTER TABLE order_review ADD CONSTRAINT IDX_order_review_FK0 FOREIGN KEY (r_no) REFERENCES review (r_no) on delete cascade;
ALTER TABLE order_review ADD CONSTRAINT IDX_order_review_FK1 FOREIGN KEY (oi_no) REFERENCES order_item (oi_no) on delete cascade;

