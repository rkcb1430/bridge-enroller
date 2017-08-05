adding
addTournament
	| name venue fee startTime enrollmentEndTime |
	name := self request: 'Name'.
	venue := self request: 'Venue'.
	fee := self request: 'Fee'.
	startTime := DateAndTime fromString: (self request: 'Start time').
	enrollmentEndTime := DateAndTime  fromString: (self request: 'Enrollment end time').
	Tournament addTournament: (Tournament name: name venue: venue fee: fee startTime: startTime enrollmentEndTime: enrollmentEndTime)