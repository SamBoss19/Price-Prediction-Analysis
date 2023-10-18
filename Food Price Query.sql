Select fd.*,fl.Average AS 'Fuel price', exc.AVERAGE_of_Central_Rate AS 'Exchange Rate' from Food_Prices as fd
inner join Fuel_Prices as fl on fd.Date = fl.Date
inner join Exchange_rate as exc
on  fl.Date = exc.Rate_day

ALTER TABLE Exchange_rate
ALTER COLUMN  Rate_day Int

Select * from Exchange_rate

select * from Fuel_Prices
UPDATE Exchange_rate
SET Rate_day = DATEADD(DAY, -1, Rate_Date_Year_Month);
