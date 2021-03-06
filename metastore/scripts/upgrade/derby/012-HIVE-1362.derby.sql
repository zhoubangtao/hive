CREATE TABLE TAB_COL_STATS(
DB_NAME VARCHAR(128) NOT NULL,
TABLE_NAME VARCHAR(128) NOT NULL,
COLUMN_NAME VARCHAR(128) NOT NULL,
COLUMN_TYPE VARCHAR(128) NOT NULL,
LONG_LOW_VALUE BIGINT,
LONG_HIGH_VALUE BIGINT,
DOUBLE_LOW_VALUE DOUBLE,
DOUBLE_HIGH_VALUE DOUBLE,
BIG_DECIMAL_LOW_VALUE VARCHAR(4000),
BIG_DECIMAL_HIGH_VALUE VARCHAR(4000),
NUM_DISTINCTS BIGINT,
NUM_NULLS BIGINT NOT NULL,
AVG_COL_LEN DOUBLE,
MAX_COL_LEN BIGINT,
NUM_TRUES BIGINT,
NUM_FALSES BIGINT,
LAST_ANALYZED BIGINT,
CS_ID BIGINT NOT NULL,
TBL_ID BIGINT NOT NULL
);

ALTER TABLE TAB_COL_STATS ADD CONSTRAINT "TAB_COL_STATS_PK" PRIMARY KEY ("CS_ID");
ALTER TABLE TAB_COL_STATS ADD CONSTRAINT "TAB_COL_STATS_FK" FOREIGN KEY ("TBL_ID") REFERENCES TBLS("TBL_ID") ON DELETE NO ACTION ON UPDATE NO ACTION;

CREATE TABLE PART_COL_STATS(
DB_NAME VARCHAR(128) NOT NULL,
TABLE_NAME VARCHAR(128) NOT NULL,
PARTITION_NAME VARCHAR(767) NOT NULL,
COLUMN_NAME VARCHAR(128) NOT NULL,
COLUMN_TYPE VARCHAR(128) NOT NULL,
LONG_LOW_VALUE BIGINT,
LONG_HIGH_VALUE BIGINT,
DOUBLE_LOW_VALUE DOUBLE,
DOUBLE_HIGH_VALUE DOUBLE,
BIG_DECIMAL_LOW_VALUE VARCHAR(4000),
BIG_DECIMAL_HIGH_VALUE VARCHAR(4000),
NUM_DISTINCTS BIGINT,
NUM_NULLS BIGINT NOT NULL,
AVG_COL_LEN DOUBLE,
MAX_COL_LEN BIGINT,
NUM_TRUES BIGINT,
NUM_FALSES BIGINT,
LAST_ANALYZED BIGINT,
CS_ID BIGINT NOT NULL,
PART_ID BIGINT NOT NULL
);

ALTER TABLE PART_COL_STATS ADD CONSTRAINT "PART_COL_STATS_PK" PRIMARY KEY ("CS_ID");
ALTER TABLE PART_COL_STATS ADD CONSTRAINT "PART_COL_STATS_FK" FOREIGN KEY ("PART_ID") REFERENCES PARTITIONS("PART_ID") ON DELETE NO ACTION ON UPDATE NO ACTION;
