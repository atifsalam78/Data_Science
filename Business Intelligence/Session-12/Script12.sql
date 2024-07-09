use school_scheduling;

-- select StaffID, StfLastname, StfFirstName, DateHired, format(datediff("2017-10-01",str_to_date(DateHired, "%d/%m/%Y"))/365,0) as StfServiceYear
-- from staff
-- order by stfLastname, stfFirstName

SELECT staffID, StfFirstName, StfLastname, Salary, convert(replace(Salary, ",",""), Decimal(15,2))*0.07 as ProposedBonus
FROM staff