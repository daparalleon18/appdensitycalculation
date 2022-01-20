population_data = read.csv('population.csv')
region_data = read.csv('regionarea.csv')
brgy_raw = merge(x = population_data, y = region_data, by = c('Region'), all.x = TRUE)

# Get brgy count per region
brgy_count = aggregate(Barangay ~ Region, data = population_data, FUN = function(x) length(unique(x)))
names(brgy_count)[names(brgy_count) == 'Barangay'] = 'BrgyCount'

# compute for brgy area given total region area and unique brgy count per area
brgy_raw = merge(x = brgy_raw, y = brgy_count, by = c('Region'), all.x = TRUE)
brgy_raw$BrgyArea = brgy_raw$Area / brgy_raw$BrgyCount 

# Compute for population density per barangay and get top 5
brgy_raw$BrgyDensity = brgy_raw$Population / brgy_raw$BrgyArea
top_bdensity = min(head(sort(brgy_raw$BrgyDensity,decreasing=TRUE),n=5))
brgy_density = brgy_raw[brgy_raw$BrgyDensity >= top_bdensity, ]
brgy_density = brgy_density[order(brgy_density[,"BrgyDensity"], decreasing = TRUE),]
brgy_density[c('Region', 'Province', 'CityProvince', 'Barangay', 'Population', 'BrgyArea', 'BrgyDensity')]

# Compute for top 5 per region and per city
brgy_density_rnk = brgy_raw[order(brgy_raw$BrgyDensity, decreasing = TRUE), ]
brgy_density_reg = Reduce(rbind,by(brgy_density_rnk, brgy_density_rnk['Region'], head, n=5))
brgy_density_reg[c('Region', 'Province', 'CityProvince', 'Barangay', 'Population', 'BrgyArea', 'BrgyDensity')]


brgy_density_cit = Reduce(rbind,by(brgy_density_rnk, brgy_density_rnk['CityProvince'], head, n=5))
brgy_density_cit[c('Region', 'Province', 'CityProvince', 'Barangay', 'Population', 'BrgyArea', 'BrgyDensity')]


# Output a CSV file
write.csv(brgy_density, "BarangayDensity.csv")
write.csv(brgy_density_reg, "BarangayDensityRegion.csv")
write.csv(brgy_density_cit, "BarangayDensityCity.csv")


