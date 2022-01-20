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
 
### List of Files:
1. Raw Data
    - population.csv
    - regionarea.csv
2. Script
    - BarangayDensity.R
    - CityDensity.R 
3. Output
    - BarangayDensity.csv - Top 5 barangays in the Philippines with highest population density
    - BarangayDensityRegion.csv - Top 5 barangays by region with highest population density
    - BarangayDensityCity.csv - Top 5 barangays by city with highest population density
    - CityDensity.csv - Top 5 cities in the Philippines with highest population density
    - CityDensityRegion.csv - Top 5 cities by region with highest population density

