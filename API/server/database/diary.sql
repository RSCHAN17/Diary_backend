DROP TABLE IF Exists diary;

create table diary (
    diary_id int generated always as identity,
    entry_title varchar(100) not null,
    date int,
    diary_entry varchar(255)  not null,
    category varchar(10) not null,
    time_of_day varchar(10) not null,
    primary key (diary_id),
    check (category in('Personal','Work','Health')),
    check (time_of_day in('Morning','Afternoon','Evening','Night'))
);


insert into diary (entry_title,date,diary_entry,category,time_of_day)
values 
    ('test entry #1',20251212,'First entry body text','Personal','Afternoon'),
    ('test entry #2',20251212,'Second entry body text','Work','Morning'),
    ('test entry #3',20251213,'Third entry body text','Health','Night'),
    ('test entry #4',20251212,'Fourth entry body text','Personal','Evening'),
    ('test entry #5',20251212,'Fifth entry body text','Work','Night'),
    ('test entry #6',20251212,'Sixth entry body text','Health','Afternoon');