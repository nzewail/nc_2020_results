DROP TABLE IF EXISTS results;

CREATE TABLE results(
    county varchar(30),
    election_date date,
    precinct varchar(30),
    contest_group_id int,
    contest_type varchar(1),
    contest_name varchar(60),
    choice varchar(60),
    choice_party varchar(3),
    vote_for int,
    election_day int,
    one_stop int,
    absentee_by_mail int,
    provisional int,
    total_votes int,
    real_precinct varchar(1)
);

COPY results(
    county,
    election_date,
    precinct,
    contest_group_id,
    contest_type,
    contest_name,
    choice,
    choice_party,
    vote_for, 
    election_day,
    one_stop,
    absentee_by_mail,
    provisional,
    total_votes,
    real_precinct
)
FROM :file
DELIMITER E'\t'
CSV HEADER
;

