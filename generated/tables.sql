--
-- Class Product as table product
--


DROP TABLE IF EXISTS "product" CASCADE;
DROP TABLE IF EXISTS "response" CASCADE;

CREATE TABLE "product" (
  "id" serial,
  "name" text NOT NULL,
  "sku" text,
  "availability" text NOT NULL,
  "categories" json NOT NULL,
  "description" text NOT NULL,
  "images" json NOT NULL,
  "weight" double precision NOT NULL,
  "weightUnit" text NOT NULL,
  -- !!!ALWAYS MAKE SURE THIS IS A JSON AND NOT TEXT!!!
  "dimensions" json,
  "price" double precision NOT NULL,
  "compareAtPrice" double precision,
  "createdAt" text NOT NULL,
  "updatedAt" text NOT NULL,
  "availableAt" text NOT NULL
);

ALTER TABLE ONLY "product"
  ADD CONSTRAINT product_pkey PRIMARY KEY (id);
