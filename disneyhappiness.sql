CREATE TABLE "disney" (
    "id" INT   NOT NULL,
    "rating" INT   NOT NULL,
    "country" TEXT   NOT NULL,
    "review" TEXT   NOT NULL,
    "park" TEXT   NOT NULL,
    "year" INT   NOT NULL,
    CONSTRAINT "pk_disney" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "happiness" (
    "id" SERIAL   NOT NULL,
    "happiness_ranking" INT   NOT NULL,
    "country" TEXT   NOT NULL,
    "happiness_score" FLOAT   NOT NULL,
    "gdp_per_capita" FLOAT   NOT NULL,
    "social_support" FLOAT   NOT NULL,
    "life_expectancy" FLOAT   NOT NULL,
    "freedom" FLOAT   NOT NULL,
    "generosity" FLOAT   NOT NULL,
    "perceived_corruption" FLOAT,
    CONSTRAINT "pk_happiness" PRIMARY KEY (
        "id"
     )
);

SELECT disney.id, disney.rating, disney.country, disney.park, happiness.id, 
happiness.happiness_ranking, happiness.happiness_score
FROM disney
JOIN happiness
on disney.country = happiness.country;

SELECT AVG(disney.rating) AS "Average Disney Rating", AVG(happiness.happiness_ranking) AS "Average Happiness Ranking"
FROM disney
JOIN happiness
on disney.country = happiness.country
GROUP BY disney.country;