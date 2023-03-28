## MMBtu_TOTAL for Ethane & Ethanol ##

SELECT A.fuel_type,sum(A.MMBtu_TOTAL) as MMBtu_TOTAL FROM DATASET A WHERE A.FUEL_TYPE IN ('Ethane','ETHANOL (100%)') group by A.fuel_type;

#-------------------------------------------##------------------------------------------##----------------------------------------------##-----------------------------------#

##Process Heating for 3M Company Facility##


select A.FACILITY_NAME,sum(B.Process_Heating) from dataset A inner join data_values B 
where A.PRIMARY_NAICS_CODE=B.PRIMARY_NAICS_CODE and A.FACILITY_NAME ='3M COMPANY' 
group by A.FACILITY_NAME;


#-----------------------------------------##----------------------------------------------##---------------------------------------------##---------------------------------#

select  A.Unit_name,A.GWht_TOTAL,sum(A.GWht_TOTAL),count(a.UNIT_NAME) from dataset A group by A.UNIT_NAME;


select * from dataset order by unit_name;

#---------------------------------------##----------------------------------------------##------------------------------------------------##-------------------------------#

## % Share of Direct Uses-Total Nonprocess for each MECS_Region ##

select B.MECS_Region,sum(A.Direct_Uses_Total_Nonprocess) from data_values A ,dataset B where B.PRIMARY_NAICS_CODE=A.PRIMARY_NAICS_CODE group by MECS_Region;


## --------------------------------------##--------------------------------------------------##----------------------------------------------##----------------------------#

## County wise Conventional Boiler Use Stats ##

SELECT A.COUNTY,B.Conventional_Boiler_Use FROM DATASET A INNER JOIN data_values B  WHERE A.PRIMARY_NAICS_CODE=B.PRIMARY_NAICS_CODE GROUP BY A.COUNTY;





