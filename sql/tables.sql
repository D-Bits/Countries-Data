
CREATE SCHEMA world;

CREATE TABLE world.nations
(
    id SERIAL,
    "name" VARCHAR(255) UNIQUE,
    topLevelDomain VARCHAR(3)[] UNIQUE,
    alpha2Code VARCHAR(2) UNIQUE,
    callingCodes INT[] UNIQUE,
    capital VARCHAR(255),
    subregion VARCHAR(255),
    "population" INT,
    demonym VARCHAR(255) UNIQUE,
    area DECIMAL,
    -- Metric for income inequality
    gini DECIMAL,
    PRIMARY KEY(id)
)
