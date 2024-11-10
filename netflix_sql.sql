/*
+----------------------------------+-----------------------------------------------------------------------------------------------------------------+
    PRODUCT                         Netflix_data
    DESCRIPTION                     Netflix movie/tv shows added in the last 20+ years 
                                        
    SOURCE                          Kaggle.com
+----------------------------------+-----------------------------------------------------------------------------------------------------------------+
    HISTORY                         ID          DATE            NAME                	COMMENT
          							F00000		10NOV2024		Katy De Los Reyes		Initial Creation                          
+----------------------------------+-----------------------------------------------------------------------------------------------------------------+
    TABLES                                  
                					NETFLIX_TEMP
+----------------------------------+-----------------------------------------------------------------------------------------------------------------+
*/

/*Create Input table */
--DROP TABLE NETFLIX_TEMP;
CREATE VOLATILE TABLE NETFLIX_TEMP (

SHOW_ID  VARCHAR (20)
,NET_TYPE  VARCHAR (20)
,TITLES VARCHAR (200)
,COUNTRY  VARCHAR (50)
,DATE_ADDED  DATE 
,RELEASE_YEAR  VARCHAR (50)
,RATING  VARCHAR (100)
,DURATION  VARCHAR (100)
,LISTED_IN  VARCHAR (100)

)
PRIMARY INDEX (SHOW_ID)
ON COMMIT PRESERVE ROWS
;

--SELECT * FROM NETFLIX_TEMP;

/*STEP 1 - Data Extraction - Import Neflix downloaded csv file to NETFLIX_TEMP table 
1. Open file double check no hiddlen columns 
2. ensure date is set as yyyy-mm-dd
3. don't need cast,description columns 
4. Save as .txt (tab delimited)
5. File > Import Data (Make sure following box is ticked: Tools > Options > Import > Ignore the first record in the import file (Skip Header)
6.  Run INSERT statement below
7.  File > Import Data to disable import mode and proceed to next step 

*/

INSERT INTO NETFLIX_TEMP VALUES (
    ?, ?, ?, ?
    , ?, ?, ?, ?
	, ?
    
    )
    
;


SELECT 
	NET_TYPE 
	,TITLES
	,DATE_ADDED
	,CAST(RELEASE_YEAR AS INT)
	,RATING
	,TRIM(LISTED_IN) AS GENRE
	,COUNTRY
	,DURATION

FROM NETFLIX_TEMP



