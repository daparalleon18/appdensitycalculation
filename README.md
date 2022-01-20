# appdensitycalculation

### Objectives
The objective of the scripts - BarangayDensity.R and CityDensity.R are:
  1. Compute for the population density of all barangays and cities in the Philippines respectively
  2. Identify the top 5 barangays and cities with the highest population density
  3. See top barangays and cities on different levels including region and city

### Available Data
The raw data used in the script are 'population.csv' and 'regionarea.csv' which contains the following fields:
1. Population Data
    - Region 
    - Province
    - CityProvince
    - Barangay
    - Population - number of people within the indicated dimensions: region, province, city and barangay
    - HouseholdPopulation - average number of people within households of indicated dimensions
    - Nhouseholds - number of households within the indicated dimensions
2. Region Area Data
    - Region 
    - Area - area of region in square kilometers

### Assumptions
 Since there are no available data for land area on city and barangay level. The analysis will make use of total area within the region divided by:
   - BarangayDensity: number of unique barangays within the same region
   - CityDensity: number of unique cities within the same region  

### Population Density Formula
 Finally, once city and barangay areas are derived from the available data, population density can now be computed using the following formula: population / area
