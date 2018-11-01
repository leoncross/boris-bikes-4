# boris-bikes-3

nouns = person; bike; docking station
verbs = release; working

## Challenge 2 ##
| Objects       | Messages      |
| ------------- |:-------------:|
| Person        |               |
| Bike          | working?      |
| Docking station| release_bike|

**Diagram below showing how objects will use methods to communicate with one another**

docking_station ---> release_bike ---> bike

docking_station ---> working? ---> bike
