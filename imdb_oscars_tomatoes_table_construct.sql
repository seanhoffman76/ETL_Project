CREATE TABLE "rotten_tomatoes" (
    "rotten_tomatoes_link" VARCHAR   NOT NULL,
    "title" VARCHAR   NOT NULL,
    "critics_consensus" VARCHAR   NOT NULL,
    "rating" VARCHAR   NOT NULL,
    "in_theaters_date" VARCHAR   NOT NULL,
    "on_streaming_date" VARCHAR   NOT NULL,
    "studio_name" VARCHAR   NOT NULL,
    "tomatometer_rating" INT   NOT NULL,
    "tomatometer_count" INT   NOT NULL,
    "audience_rating" FLOAT   NOT NULL,
    "audience_count" FLOAT   NOT NULL,
    CONSTRAINT "pk_rotten_tomatoes" PRIMARY KEY (
        "title"
     )
);

CREATE TABLE "awards" (
    "person" VARCHAR   NOT NULL,
    "award" VARCHAR   NOT NULL,
    "movie" VARCHAR   NOT NULL,
    "year_of_award" FLOAT   NOT NULL,
    CONSTRAINT "pk_awards" PRIMARY KEY (
        "movie"
     )
);

CREATE TABLE "imdb" (
    "director" VARCHAR   NOT NULL,
    "title" VARCHAR   NOT NULL,
    "year_released" INT   NOT NULL,
    "duration_min" INT   NOT NULL,
    "genres" VARCHAR   NOT NULL,
    "actor_1" VARCHAR   NOT NULL,
    "actor_2" VARCHAR   NOT NULL,
    "actor_3" VARCHAR   NOT NULL,
    "imdb_url" VARCHAR   NOT NULL,
    "review_count" INT   NOT NULL,
    "imdb_score" FLOAT   NOT NULL,
    CONSTRAINT "pk_imdb" PRIMARY KEY (
        "title"
     )
);

ALTER TABLE "rotten_tomatoes" ADD CONSTRAINT "fk_rotten_tomatoes_title" FOREIGN KEY("title")
REFERENCES "imdb" ("title");

ALTER TABLE "awards" ADD CONSTRAINT "fk_awards_movie" FOREIGN KEY("movie")
REFERENCES "imdb" ("title");

