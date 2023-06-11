CREATE TABLE "USERS" (
	"id"	number(10)  primary key,
	"login_id"	varchar2(50)		NOT NULL,
	"upassword"	varchar2(100)		NOT NULL,
	"uemail"	varchar2(100)		NOT NULL,
	"uphone"	varchar2(50)		NOT NULL,
	"uname"	varchar2(50)		NOT NULL,
	"ugrade"	varchar2(50)	DEFAULT BRONZE,
	"ucurrent_point"	number(10)	DEFAULT 0,
	"utotal_point"	number(10)	DEFAULT 0,
	"ustreet"	varchar2(500)		NOT NULL,
	"udetailaddr"	varchar2(500)		NOT NULL,
	"upostcode"	number(5)		NOT NULL,
	"role"	varchar2(20)		NOT NULL,
	"is_authenticated"	number(1),
	"mcreated_time"	timestamp	DEFAULT systimestamp,
	"mmodified_time"	timestamp	DEFAULT systimestamp
);

CREATE TABLE "PRODUCTS" (
	"id"	number(10)		primary key,
	"pname"	varchar2(100)		NOT NULL,
	"pcategory"	varchar2(20),
	"pdetail_image"	varchar2(2000)	,
	"palc"	number(2)		NOT NULL,
	"ptitle_image"	varchar2(100)		NOT NULL,
	"psold"	number(5)	DEFAULT 0	NOT NULL,
	"pregion"	varchar2(20)		NOT NULL,
	"pcreated_time"	timestamp	DEFAULT systimestamp,
	"pmodified_time"	timestamp	DEFAULT systimestamp
);

CREATE TABLE "ORDERS" (
	"id"	number(10)		primary key,
	"uid"	number(10)		NOT NULL,
	"oinitial_price"	number(8)		NOT NULL,
	"odiscount_price"	number(6)		NOT NULL,
	"ofinal_price"	number(8)		NOT NULL,
	"opoint"	number(5)		NOT NULL,
	"ocreated_time"	timestamp	DEFAULT systimestamp	NULL,
	"ostatus"	varchar2(20)	
);

CREATE TABLE "ORDER_PRODUCTS" (
	"id"	number(10)		primary key,
	"pid"	number(10)		NOT NULL,
	"oid"	number(10)		NOT NULL,
	"pcount"	number(2)		NOT NULL,
	"pprice"	number(6)		NOT NULL
);

CREATE TABLE "P_OPTION" (
	"id"	number(10)		primary key,
	"pid"	number(10)		NOT NULL,
	"pvolume"	varchar2(50)		NOT NULL,
	"pprice"	number(6)		NOT NULL,
	"pstock"	number(2)		NULL
);

CREATE TABLE "QUESTIONS" (
	"id"	number(10)		primary key,
	"uid"	number(10)		NOT NULL,
	"pid"	number(10)		NOT NULL,
	"qtitle"	varchar2(100)		NULL,
	"qcontent"	varchar2(1000)		NOT NULL,
	"qtype"	varchar2(20)		NULL,
	"qcreated_time"	timestamp	DEFAULT systimestamp,
	"qmodified_time"	timestamp	DEFAULT systimestamp
);

CREATE TABLE "REVIEW_REPLIES" (
	"id"	number(10)		primary key,
	"rid"	number(10)		NOT NULL,
	"reply_content"	varchar2(1000)		NOT NULL,
	"rcreated_time"	timestamp	DEFAULT systimestamp	NULL,
	"rmodified_time"	timestamp	DEFAULT systimestamp	NULL
);

CREATE TABLE "QUESTION_REPLIES" (
	"id"	number(10)		primary key,
	"qid"	number(10)		NOT NULL,
	"reply_content"	varchar2(1000)		NOT NULL,
	"rcreated_time"	timestamp		NULL,
	"rmodified_time"	timestamp		DEFAULT systimestamp
);

CREATE TABLE "REVIEWS" (
	"id"	number(10)		primary key,
	"pid"	number(10)		NOT NULL,
	"oid"	number(10)		NOT NULL,
	"uid"	number(10)		NOT NULL,
	"rcontent"	varchar2(1000)		NOT NULL,
	"rratings"	number(1)		NOT NULL,
	"review_image"	varchar2(100)		NULL,
	"rcreated_time"	timestamp	DEFAULT systimestamp,
	"rmodified_time"	timestamp	DEFAULT systimestamp
);

CREATE TABLE "BOARDS" (
	"id"	number(10)		primary key,
	"uid"	number(10)		NOT NULL,
	"btitle"	varchar2(100)		NOT NULL,
	"bcontent"	varchar2(1000)		NOT NULL,
	"bimage1"	varchar2(200)		NULL,
	"bimage2"	varchar2(200)		NULL,
	"bcreated_time"	timestamp	DEFAULT systimestamp,
	"bstart_time"	timestamp	DEFAULT systimestamp,
	"bend_time"	timestamp	DEFAULT systimestamp,
	"btype"	varchar2(10)		NOT NULL,
	"bviewed"	number(6)		DEFAULT 0
);

CREATE TABLE "PAYMENTS" (
	"id"	number(10)		primary key,
	"oid"	number(10)		NOT NULL,
	"pcreated_time"	timestamp		DEFAULT systimestamp,
	"payment_status"	varchar2(20)	
);

CREATE TABLE "DELIVERIES" (
	"id"	number(10)		primary key,
	"oid"	number(10)		NOT NULL,
	"dcode"	varchar2(10)		NULL,
	"dstreet"	varchar2(500)		NULL,
	"ddetailaddr"	varchar2(500)		NULL,
	"dpostcode"	number(5)		NULL,
	"rname"	varchar2(50)		NULL,
	"rphone"	varchar2(20)		NULL,
	"dmessage"	varchar2(500)		NULL,
	"dprice"	number(5)	DEFAULT 3000	NULL,
	"dstatus"	varchar2(20)		NULL,
	"dcreated_time"	timestamp		DEFAULT systimestamp,
	"dtype"	number(1)		NULL
);

CREATE TABLE "BASKET" (
	"id"	number(10)		primary key,
	"uid"	number(10)		NOT NULL,
	"estimated_price"	number(10)		DEFAULT 0
);

CREATE TABLE "BASKET_PRODUCTS" (
	"id"	number(10)		primary key,
	"bid"	number(10)		NOT NULL,
	"uid"	number(10)		NOT NULL,
	"pid"	number(10)		NOT NULL,
	"pcount"	number(2)		DEFAULT 0
);

CREATE TABLE "RECENTLY_VIEWED_PRODUCTS" (
	"id"	number(10)		primary key,
	"pid"	number(10)		NOT NULL,
	"uid"	number(10)		NOT NULL,
	"created_time"	timestamp		DEFAULT systimestamp
);

CREATE TABLE "SELECTED_PRODUCTS" (
	"id"	number(10)		primary key,
	"uid"	number(10)		NOT NULL,
	"pid"	number(10)		NOT NULL,
	"created_time"	timestamp		DEFAULT systimestamp
);