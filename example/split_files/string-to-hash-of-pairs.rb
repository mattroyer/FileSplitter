locations = 'Alabama, AL, Alaska, AK, Arizona, AZ, Arkansas, AR, California, CA, Colorado, CO, Connecticut, CT, Delaware, DE, Florida, FL, Georgia, GA, South Dakota, SD'
puts Hash[locations.split(',').map(&:strip).each_slice(2).to_a]
puts Hash[*locations.split(',').map(&:strip)]
