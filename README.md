[![Code Climate](https://codeclimate.com/github/petemmccarthy/Makers-Projects-Boris_bikes/badges/gpa.svg)](https://codeclimate.com/github/petemmccarthy/Makers-Projects-Boris_bikes) [![Test Coverage](https://codeclimate.com/github/petemmccarthy/Makers-Projects-Boris_bikes/badges/coverage.svg)](https://codeclimate.com/github/petemmccarthy/Makers-Projects-Boris_bikes)

##### Boris Bikes

A test-driven Ruby application modelling London's Boris Bike network.

- Docking stations can hold bikes available for rent 
- Users can rent from and return bikes to docking stations
- Users can also return broken bikes to docking stations
- Broken bikes can be taken to a garage to be fixed
- Vans collect broken bikes from the docking station, take them to a garage to be fixed and take fixed bikes back to docking stations

##### Technologies and methods used:

- Ruby
- Tested using Rspec

##### Instructions to run

Clone the repository:

```
$ git clone https://github.com/petemmccarthy/Makers-Projects-Boris_bikes.git
```

Change into the directory and run the rspec tests:

```
$ cd Makers-Projects-Boris_bikes

$ rspec
```

Play with it:

```
$ cd Makers-Projects-Boris_bikes/lib

$ irb
```

#### Next steps

- Add the Van class to collect broken bikes from docking stations and take them to the garage to be fixed, and then return them to docking stations.