-- Lägger till Program
INSERT INTO Program (programnamn, beskrivning) VALUES
('Systemutvecklare Java', 'Utbildning i Java'),
('Cybersäkerhet', 'Utbildning i säkerhet');

-- Lägger till Utbildningsledare
INSERT INTO Utbildningsledare (fornamn, efternamn, epost) VALUES
('Patrick', 'Karam', 'patrick.karam@yrkesco.se'),
('Dua', 'Ali', 'dua.ali@yrkesco.se'),
('Hassan', 'Ibrahim', 'hassanibrahim@yrkesco.se');

-- Lägger till kurser kopplade till programmen
INSERT INTO Kurs (kursnamn, kurskod, poang, beskrivning, program_id) VALUES
('Databasteknik', 'DT101', 25, 'Grundläggane SQL och datamoddelering', 1),
('Java Programmering', 'JP202', 50, 'Objektorienterad programmering', 1),
('Nätverkssäkerhet', 'NS404', 35, 'Skydd av infrastruktur och protokoll', 2),
('Etisk Hacking', 'EH505', 40, 'Metoder för att hita svagheter i system', 2);

-- Lägger till klasser
INSERT INTO Klass (klassnamn, startdatum, program_id, ledare_id) VALUES
-- Systemutvecklare Java (program_id 1)
('JAVA24', '2024-09-01', 1, 1),
('JAVA25', '2025-09-01', 1, 1),
('JAVA26', '2026-09-01', 1, 1),

-- Cybersäkerhet (program_id 2)
('CYBER24', '2024-09-01', 2, 2),
('CYBER25', '2025-09-01', 2, 2),
('CYBER26', '2026-09-01', 2, 2);

-- Lägger till studenter
INSERT INTO Student (fornamn, efternamn, epost, klass_id) VALUES
('Saile', 'Skogh', 'saile.skogh@student.se', 1),         -- JAVA24
('Joelle', 'Sleilaty', 'joelle.sleilaty@student.se', 2), -- JAVA25
('Sam', 'Olsson', 'sam.olsson@student.se', 3),           -- JAVA26
('Johan', 'Patrick', 'johan.patrick@student.se', 4),     -- CYBER24
('Adam', 'Salman', 'adam.salman@student.se', 5),         -- CYBER25
('Marabou', 'Kinder', 'marabou.kinder@student.se', 6);   -- CYBER26

-- Koppla könsliga uppgifter till studenterna
INSERT INTO Kansliga_uppgifter (personnmr, student_id, ledare_id) VALUES
('19950101-1111', 1, 1), -- Saile
('19960202-2222', 2, 1), -- Joelle
('19970303-3333', 3, 1), -- SAm
('19980404-4444', 4, 2), -- Johan
('19990505-5555', 5, 2), -- Adam
('20000606-6666', 6, 2); -- Marabou