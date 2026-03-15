-- Först skapar jag grundtabellerna:

CREATE TABLE Program (
    program_id SERIAL PRIMARY KEY,
    programnamn VARCHAR(100) NOT NULL,
    beskrivning TEXT
);

CREATE TABLE Utbildningsledare (
    ledare_id SERIAL PRIMARY KEY,
    fornamn VARCHAR(50) NOT NULL,
    efternamn VARCHAR(50) NOT NULL,
    epost VARCHAR(100) UNIQUE
);

-- Här skapar jag tabeller som behöver iformation från tabellerna ovan, detta är alltså mina Foreign Keys.
-- Kurs-tabellen med kurskod och poäng enligt instruktionerna
CREATE TABLE Kurs (
    kurs_id SERIAL PRIMARY KEY,
    kursnamn VARCHAR(100) NOT NULL,
    kurskod VARCHAR(20) UNIQUE, 
    poang INT,
    beskrivning TEXT,        
    program_id INTEGER REFERENCES Program(program_id) -- Kopplas till Program
);


-- Klasser (varje program blir beviljat i 3 omgångar/klasser)
CREATE TABLE Klass (
    klass_id SERIAL PRIMARY KEY,
    klassnamn VARCHAR(50) NOT NULL,
    startdatum DATE,
    program_id INTEGER REFERENCES Program(program_id),
    ledare_id INTEGER REFERENCES Utbildningsledare(ledare_id) 
);

-- Student-tabellen med koppling till deras klass
CREATE TABLE Student (
    student_id SERIAL PRIMARY KEY,
    fornamn VARCHAR(50) NOT NULL,
    efternamn VARCHAR(50) NOT NULL,
    epost VARCHAR (100) UNIQUE,
    klass_id INTEGER REFERENCES Klass(klass_id)
);

--Känsliga personuppgifter separat för bättre kontroll
CREATE TABLE Kansliga_uppgifter (
    uppgift_id SERIAL PRIMARY KEY,
    personnmr VARCHAR(12) NOT NULL,
    student_id INTEGER UNIQUE REFERENCES Student(student_id),
    ledare_id INTEGER REFERENCES Utbildningsledare(ledare_id)
);

-- Konsulter och deras företagsinformation
CREATE TABLE Konsult (
    konsult_id SERIAL PRIMARY KEY,
    namn VARCHAR(100) NOT NULL,
    foretagsnamn VARCHAR(100),
    org_nummer VARCHAR(20),
    timarvode DECIMAL(10, 2),
    kurs_id INTEGER REFERENCES Kurs(kurs_id)
);