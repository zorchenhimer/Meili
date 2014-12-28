DROP TABLE IF EXISTS settings;
CREATE TABLE settings(name TEXT PRIMARY KEY, value TEXT);
INSERT INTO settings (name, value) VALUES("apiversion", "1");

DROP TABLE IF EXISTS arrivals;
CREATE TABLE arrivals(id INTEGER PRIMARY KEY, company INTEGER, city INTEGER, time INTEGER, status INTEGER, clear INTEGER DEFAULT 0);

DROP TABLE IF EXISTS departures;
CREATE TABLE departures(id INTEGER PRIMARY KEY, company INTEGER, city INTEGER, time INTEGER, status INTEGER, gate INTEGER, busnum TEXT, clear INT DEFAULT 0);

DROP TABLE IF EXISTS statuses;
CREATE TABLE statuses(id INTEGER PRIMARY KEY, status TEXT);
INSERT INTO statuses (status) VALUES ('on time'), ('canceled'), ('boarding'), ('delayed'), ('projected');

DROP TABLE IF EXISTS cities;
CREATE TABLE cities(id INTEGER PRIMARY KEY, city TEXT);

DROP TABLE IF EXISTS companies;
CREATE TABLE companies(id INTEGER PRIMARY KEY, company TEXT);

DROP TABLE IF EXISTS gates;
CREATE TABLE gates(id INTEGER PRIMARY KEY, gate TEXT);

-- Test data. Comment these out for a production database.
INSERT INTO gates (gate) VALUES ('a1'), ('a2'), ('a3'), ('a4'), ('a5'), ('b1'), ('b2'), ('b3'), ('b4'), ('b5'), ('c1'), ('c2'), ('c3'), ('c4'), ('c5');
INSERT INTO companies (company) VALUES ('Greyhound'), ('CK Tours'), ('Trans-Pacific'), ('Anna'), ('Win Li Tours'), ('ECS'), ('Treblays');
INSERT INTO cities (city) VALUES ('New York'), ('Boston'), ('New London'), ('China Town'), ('Flushing'), ('Dorchester'), ('Danbury'), ('Crasnton'), ('Providence');