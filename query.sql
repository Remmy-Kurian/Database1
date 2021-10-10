use axc6541;

CREATE TABLE STATE ( State_id int NOT NULL UNIQUE, State varchar (50),
Abbreviation char (2), YearOfStatehood int,
Capital varchar (50), Capital_Since int,
LandArea decimal, IsPopulousCity Boolean,
MunicipalPopulatiion int, MetroPopulatiion int,
primary key(State)
);

CREATE TABLE COUNTY ( State Varchar (50), County Varchar (50), 
Population int, Latitude decimal (15, 12), 
Longitude decimal (15, 12),
primary key(State, County),
FOREIGN KEY (State) REFERENCES STATE(State)
);

CREATE TABLE VACCINATIONS ( State Varchar (50), TotalDistributed int,
TotalAdministered int, `Distributed per 100K`	 int,
`Administered per 100K` int, `People with 1+ Doses` int,
`People with 1+ Doses per 100K` int, `People with 2+ Doses` int,
`People with 2+ Doses per 100K` int,
primary key(State),
FOREIGN KEY (State) REFERENCES STATE(State)
); 

CREATE TABLE CONFIRMED_CASES ( State Varchar (50), County Varchar (50), 
TestDate date, PositiveCount int,
primary key(State, County,TestDate),
FOREIGN KEY (State) REFERENCES STATE(State),
FOREIGN KEY (State, County) REFERENCES COUNTY(State, County)
); 


CREATE TABLE DEATHS ( State Varchar (50), 
County Varchar (50), 
ReportDate date, DeathCount int,
primary key(State, County, ReportDate),
FOREIGN KEY (State) REFERENCES STATE(State),
FOREIGN KEY (State, County) REFERENCES COUNTY(State, County)
);