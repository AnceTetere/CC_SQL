 --CLEANING UP YOUR JOING
 SELECT --A.Petid, 
        --A.[Name], 
		--A.Kind,
		--A.Gender,
		--A.Age,
		A.OwnerID,
		--B.ProcedureDate,
		--B.ProcedureType,
		--B.ProcedureSubCode,
		--C.[Description],
		C.Price
 FROM Pets AS A
 INNER JOIN ProceduresHistory AS B
 ON A.Petid = B.PetID
 LEFT JOIN ProcedureDetails AS C
 ON B.ProcedureType = C.ProcedureType AND B.ProcedureSubCode = C.ProcedureSubCode;


