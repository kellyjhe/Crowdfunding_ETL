-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/tlkmQh
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "category" (
    "category_id" VARCHAR(255)   NOT NULL,
    "category" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);

CREATE TABLE "contacts" (
    "contact_id" int   NOT NULL,
    "first_name" VARCHAR(255)   NOT NULL,
    "last_name" VARCHAR(255)   NOT NULL,
    "email" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "subcategory" (
    "subcategory_id" VARCHAR(255)   NOT NULL,
    "subcategory" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

CREATE TABLE "campaign" (
    "cv_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" VARCHAR(255)   NOT NULL,
    "description" VARCHAR(255)   NOT NULL,
    "goal" DEC   NOT NULL,
    "pledged" DEC   NOT NULL,
    "outcome" VARCHAR(255)   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" VARCHAR(255)   NOT NULL,
    "currency" VARCHAR(255)   NOT NULL,
    "launched_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL,
    "staff_pick" BOOLEAN   NOT NULL,
    "spotlight" BOOLEAN   NOT NULL,
    "category_subcategory" VARCHAR(255)   NOT NULL,
    "category" VARCHAR(255)   NOT NULL,
    "subcategory" VARCHAR(255)   NOT NULL,
    "category_id" VARCHAR(255)   NOT NULL,
    "subcategory_id" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cv_id"
     )
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");

SELECT *
FROM category;

SELECT *
FROM contacts;

SELECT *
FROM subcategory;

SELECT *
FROM campaign;

COPY category FROM '/Users/kellyhe/Bootcamp_Homework/Crowdfunding_ETL/Resources/category.csv' DELIMITER ',' CSV HEADER;
COPY contacts FROM '/Users/kellyhe/Bootcamp_Homework/Crowdfunding_ETL/Resources/contacts.csv' DELIMITER ',' CSV HEADER;
COPY subcategory FROM '/Users/kellyhe/Bootcamp_Homework/Crowdfunding_ETL/Resources/subcategory.csv' DELIMITER ',' CSV HEADER;
COPY campaign FROM '/Users/kellyhe/Bootcamp_Homework/Crowdfunding_ETL/Resources/campaign.csv' DELIMITER ',' CSV HEADER;
