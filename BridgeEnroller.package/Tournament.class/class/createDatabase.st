initialization
createDatabase
	Database := OrderedCollection new
		add: (self name: 'First Pairs Competition' venue: 'Best Bridge Site'  fee: 20  startTime: (DateAndTime fromString: '2017-08-18 10:00')  enrollmentEndTime: (DateAndTime fromString: '2017-08-16 20:00') );
		add: (self name: 'Second Pairs Competition' venue: 'Pretty Nice Place' fee: 15  startTime: (DateAndTime fromString: '2017-08-25 11:00') enrollmentEndTime: (DateAndTime fromString: '2017-08-24 22:00') );
		yourself