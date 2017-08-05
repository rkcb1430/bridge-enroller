initialization
name: aNameString venue: aVenueString fee: anInteger startTime: aStartDateTime enrollmentEndTime: anEndDateTime
	| tournament |
	tournament := self new
		name: aNameString;
		venue: aVenueString;
		fee: anInteger;
		startTime: aStartDateTime;
		enrollmentEndTime: anEndDateTime;
		yourself.
	tournament participants: OrderedCollection new.
	^tournament
		