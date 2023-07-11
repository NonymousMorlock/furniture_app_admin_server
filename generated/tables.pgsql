--
-- Class Product as table product
--

CREATE TABLE "product" (
  "id" serial,
  "name" text NOT NULL,
  "sku" text,
  "availability" text NOT NULL,
  "quantity" integer NOT NULL,
  "categories" json NOT NULL,
  "description" text NOT NULL,
  "images" json NOT NULL,
  "weight" double precision NOT NULL,
  "weightUnit" text NOT NULL,
  "dimensions" text,
  "price" double precision NOT NULL,
  "compareAtPrice" double precision,
  "createdAt" text NOT NULL,
  "updatedAt" text NOT NULL,
  "availableAt" text NOT NULL
);

ALTER TABLE ONLY "product"
  ADD CONSTRAINT product_pkey PRIMARY KEY (id);


--
-- Class Response as table response
--

CREATE TABLE "response" (
  "id" serial,
  "body" text NOT NULL,
  "statusCode" integer NOT NULL
);

ALTER TABLE ONLY "response"
  ADD CONSTRAINT response_pkey PRIMARY KEY (id);


