# moje-sql-cvicenia
-- 1. KROK: Vytvorenie tabuľky (Povieme databáze, aké stĺpce budeme mať)
CREATE TABLE Hry (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nazov VARCHAR(100) NOT NULL,
    zaner VARCHAR(50),
    rok_vydania INT,
    hodnotenie DECIMAL(3,1)
);

-- 2. KROK: Vloženie dát (Vyplníme tabuľku konkrétnymi hrami)
INSERT INTO Hry (nazov, zaner, rok_vydania, hodnotenie) VALUES
('The Witcher 3', 'RPG', 2015, 9.8),
('Minecraft', 'Sandbox', 2011, 9.5),
('Cyberpunk 2077', 'RPG', 2020, 8.5),
('Portal 2', 'Puzzle', 2011, 9.9),
('Grand Theft Auto V', 'Akcna', 2013, 9.6);

-- 3. KROK: Dopyty (Pýtame sa databázy na výsledky)

-- Dopyt A: Ukáž mi úplne všetko, čo v tabuľke je
SELECT * FROM Hry;

-- Dopyt B: Ukáž mi len hry, ktoré sú žánru 'RPG'
SELECT * FROM Hry WHERE zaner = 'RPG';

-- Dopyt C: Ukáž mi len názov a hodnotenie a zoraď ich od najlepšej po najhoršiu
SELECT nazov, hodnotenie FROM Hry ORDER BY hodnotenie DESC;
