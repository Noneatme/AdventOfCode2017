-- Advent of Code 1 - Task 2

-- Puzzle Code
local puzzleInput = "<puzzleCode>";
local currentCount = 0; 

-- Testeingabe
local testInput = { "1212", "1221", "123425", "123123", "12131415"}

-- Funktion: Algorithmus
-- input: string
function doProgramForInput(input)
	print("________________");
	print("Zahl: " ..input);

	-- Jeden Char durchgehen
	for i = 1, #input do
		-- Jetzigen Char, die Hälfte der Liste und den Char bei der Hälfte
		-- raussuchen
		local currentChar = input:sub(i, i);
		local halfList = tonumber(#input) / 2;
		local charAtHalf = input:sub(i + halfList, i + halfList);
		
		-- Wenn der nächste Char (addiert mit der hälfte der Liste) nicht existiert
		if(charAtHalf:len() < 1) then
			charAtHalf = input:sub(i - halfList, i - halfList);
		end
		
		print("Zurzeitiger Char: "..currentChar ..", CharAtHalf: "..charAtHalf);
		
		-- Wenn der Char existiert und übereinstimmt, Counter erhöhen
		if(currentChar:len() > 0) then
	       		if(currentChar == charAtHalf) then
               	 		currentCount = currentCount  + currentChar;
       			end
		end
	end

	-- Ergebnis ausgeben und resetten
	print("Ergebnis: " ..currentCount);
	print("");

	currentCount = 0;
end

-- Testinputs testen
for v, x in pairs(testInput) do
	doProgramForInput(tostring(x));
end

-- Algorithmus für richtigen Puzzlecode ausführen
doProgramForInput(puzzleInput);
