CREATE TABLE "users" (
  "userid" SERIAL PRIMARY KEY,
  "full_name" varchar,
  "created_at" timestamp,
  "country_code" int,
  "email" varchar,
  "imageId" varchar,
  "isCelebrity" boolean
);

CREATE TABLE "Tweets" (
  "tweetid" int PRIMARY KEY,
  "text" varchar,
  "userId" int,
  "created_at" timestamp
);

CREATE TABLE "follows" (
  "followerId" int,
  "followeeId" int,
  PRIMARY KEY ("followerId", "followeeId")
);

ALTER TABLE "Tweets" ADD FOREIGN KEY ("userId") REFERENCES "users" ("userid");

ALTER TABLE "follows" ADD FOREIGN KEY ("followerId") REFERENCES "users" ("userid");

ALTER TABLE "follows" ADD FOREIGN KEY ("followeeId") REFERENCES "users" ("userid");

