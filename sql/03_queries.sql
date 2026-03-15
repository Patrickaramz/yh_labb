SELECT 
    Student.fornamn, 
    Student.efternamn, 
    Klass.klassnamn,
    Kansliga_uppgifter.personnmr
FROM Student
-- Kopplar tabellen Klass för att få ut klassnamnet baserat på studentens klass_id
JOIN Klass ON Student.klass_id = Klass.klass_id
-- Kopplar tabellen Kansliga_uppgifter för att få ut personnumret baserat på studentens student_id
JOIN Kansliga_uppgifter ON Student.student_id = Kansliga_uppgifter.student_id;