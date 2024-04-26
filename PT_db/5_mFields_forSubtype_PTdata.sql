--JOINING ON MULTIPLE FIELDS
SELECT *
FROM ProceduresHistory AS A
LEFT JOIN ProcedureDetails AS B
ON A.ProcedureType = B.ProcedureType AND A.ProcedureSubCode = B.ProcedureSubCode;