# rds 2 csv time
MoveApps

Github repository: *github.com/movestore/rds-2-csv-time*

## Description
Movement data (in R-format rds) is transformsed into a data frame. For each location this App extracts additional time values (e.g. Julian day) that are added to the data frame that is then returned as .csv artefakt and can be downloaded. The original data set is also passed on as output to a possible next App. 

## Documentation
The input Movement data set is transformed into a table (data frame) with a row for each location and columns indicating the timestamp, individual, location coordiantes (longitude, latitude) and other properties of the location. For each location this App additionally extracts date, time, year, month, Julian day and calender week from the timestamp information. These extra time values are added to the data frame. For better readability, only properties (columns) with (non-NA) information in at least one row are retained. This table is returned as an artefact named `data.csv`.

### Input data
moveStack in Movebank format

### Output data
moveStack in Movebank format

### Artefacts
`data.csv`: input data set as csv table, including only columns that are not all NA

### Parameters 
no parameters

### Null or error handling:
**Data:** The full input data set is returned for further use in a next App and cannot be empty.