##Makers Academy 
###Week 1: Architect Badge Challenge

####Spec

The FAAST system will cater for the following:

* There will be a number of trains inside the system
* Trains will travel from station to station
* Inside of a station, when the train stops, passengers will alight and enter the carriages of the train
* A passenger will touch in at the station, and touch out at the destination station
* Each coach of a train can hold up to 40 passengers
* Each train is made of a number of coaches
* Passengers can only touch in at a station (and board a train) if their balance is more than 2 GBP

####Tools Used

* Sublime Text 3 
* Command Line
* IRB
* RSpec
* Git Hub

#### Objects, Attributes and Methods

Methods listed are those needed to use the program. There are others in the background that wouldn't normally be directly accessed.

1. Person
*Initialized with a balance of 10 GBP.*
	* touch_in(station)
	* touch_out(station) 
2. Station
*Initialized with an empty platform array to hold passengers, and an empty array.*'trains' to hold trains.
	* passenger_count
	* train_count
	* passengers_board(train)
3. Train
*Initialized with 3 empty coaches (immutable)*
	* passengers_count
	* arrive(station)
	* leave(station)
	* empty_passengers(station)
4. Coach
*Initialized with a capacity of 40 (immutable), with an empty array 'on_board' to hold passengers*