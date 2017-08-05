rendering
showTournament: aTournament
	self call: (EnrollingView  new
		tournament: aTournament;
		yourself)