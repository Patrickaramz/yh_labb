# Relationship Statements för YrkesCo

## Lista på entiteter:
- Student
- Känsliga uppgifter
- Klass
- Utbildningsledare
- Program
- Kurs
- Konsult

## Relationer (Relationship Statements)
1. *Student – Känsliga uppgifter*
   - Varje student har exakt ett personnummer lagrat separat - (1:1)

2. *Utbildningsledare – Känsliga uppgifter*
   - Varje utbildningsledare har exakt ett personnummer lagrat separat - (1:1)

3. *Utbildningsledare – Klass*
   - En utbildningsledare ansvarar för flera (3) klasser - (1:M)

4. *Program – Klass*
   - Ett program resulterar i tre klassomgångar - (1:M)

5. *Program – Kurs*
   - Ett program består av ett antal kurser -  (1:M)

6. *Klass – Student*
 - En klass innehåller många studenter, men en student tillhör endast en klass - (1:M) 

7. *Kurs – Konsult*
   - En kurs kan undervisas av en eller flera konsulter - (1:M)