-- Tester för att se till att databasen fungerar.


-- Här får vi fram studentens namn tillsammans med deras personnuimmer.
SELECT 
    Student.fornamn,
    Student,efternamn,
    Kansliga_uppgifter.personnmr
FROM Student
JOIN Kansliga_uppgifter ON Student.student_id = Kansliga_uppgifter.student_id;

-- Här får vi ut alla stundeter samt deras klass
SELECT 
    Student.fornamn, 
    Student.efternamn, 
    Klass.klassnamn
FROM Student
JOIN Klass ON Student.klass_id = Klass.klass_id;