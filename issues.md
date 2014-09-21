##Known issues:

Bugs:
- [ ] When a station has more than 120 passagers, and calls 'passager.board(train)' method, the 'excess' passagers are lost to the system
- [x] ~~Stations can add passagers to trains that aren't currently at that station~~


Potential Improvements:
- [ ] Refactoring needed across the board
- [ ] There isn't a method to tell the system to 'touch_out' multiple passagers from a stations (can run x.times loop in IRB, but is timeconsuming)
- [ ] Can only add all the passagers at a station onto a train, not a custom number
- [x] ~~Train can't report the total number of passagers it's holding~~


Bonus
- [ ] Add payment system, to charge passagers 2 GBP when touching in