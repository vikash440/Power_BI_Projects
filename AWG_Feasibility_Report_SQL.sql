
use Weather_DATA;
SELECT TOP (1000) [name]
      ,[datetime]
      ,[tempmax]
      ,[tempmin]
      ,[temp]
      ,[dew]
      ,[humidity]
      ,[icon]
  FROM [Weather_DATA].[dbo].[Lahore ]

  select count(icon) as Total_Days_of_Rain from [Lahore] where icon = 'rain'; /* To verify the number of rainy days should be less than 100 */

  select * into updated_table_3 from [Lahore ] where dew > 0  and humidity > 0 and temp> 0 and icon not like 'rain'; /* Seperated the required data */

  alter table updated_table_3 alter column dew int; 

  select datetime, name, humidity, temp, dew, Province into updated_table_4 from updated_table_3 left join location_table on name = location; /* to match the table of values and province */ 

  select * from updated_table_4;

  use Weather_DATA;
SELECT TOP (1000) [name]
      ,[datetime]
      ,[tempmax]
      ,[tempmin]
      ,[temp]
      ,[dew]
      ,[humidity]
      ,[icon]
  FROM [Weather_DATA].[dbo].[Karachi ]

  select count(icon) as Total_Days_of_Rain from [Karachi] where icon = 'rain'; /* To verify the number of rainy days should be less than 100 */

  select * into updated_table_5 from [Karachi ] where dew > 0  and humidity > 0 and temp> 0 and icon not like 'rain'; /* Seperated the required data */

  alter table updated_table_5 alter column dew int; 

  select datetime, name, humidity, temp, dew, Province into updated_table_6 from updated_table_5 left join location_table on name = location; /* to match the table of values and province */ 

  select * from updated_table_6;

use Weather_DATA;
SELECT TOP (1000) [name]
      ,[datetime]
      ,[tempmax]
      ,[tempmin]
      ,[temp]
      ,[dew]
      ,[humidity]
      ,[icon]
  FROM [Weather_DATA].[dbo].[Islamabad ]

  select count(icon) as Total_Days_of_Rain from [Islamabad] where icon = 'rain'; /* To verify the number of rainy days should be less than 100 */

  select * into updated_table_7 from [Islamabad ] where dew > 0  and humidity > 0 and temp> 0 and icon not like 'rain'; /* Seperated the required data */

  alter table updated_table_7 alter column dew int; 

  select datetime, name, humidity, temp, dew, Province into updated_table_8 from updated_table_7 left join location_table on name = location; /* to match the table of values and province */ 

  select * from updated_table_8;
