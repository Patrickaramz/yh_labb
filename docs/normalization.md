## Normalisering till 3NF

## 1NF
För att uppfylla 1NF har jag sett till att alla tabeller har en unik primärnyckel (PK) och att varje kolumn endast innehåller ett enda värde. Det finns inga repeterande grupper eller listor i någon av kolumnerna, vilket innebär att varje cell representerar en specifik och unik information.

## 2NF
Jag uppfyller 2NF genom att ha sett till att all information i en tabell handlar om just den tabellens innehåll. Eftersom varje tabell har en tydlig nyckel (PK), så vet jag att exempelvis ett kursnamn bara har med det specifika kurs_id att göra och inget annat. Det gör att jag slipper upprepa onödig information.

## 3NF 
För att uppnå 3NF har jag tagit bort alla beroenden som inte går direkt via primärnyckeln. Jag separerar länslig data genom att
lägga personnummer i en egen tabell (känsliga_uppgifter) istället för att ha det tillsammans med student samt utbildningsledarens namn. Detta gör att informationen är säkrare och att jag inte behöver upprepa känslig data i onödan.

Jag gör kopplingar istället för kopior genom att använda ett program_id i min Klass tabell istälet för att skriva in programnamnet manuellt. Detta gör att om ett program byter namn så behöver jag bara ändra det på ett ställe, vilket håller databasen konsekevent och minskar risk för felaktig information.