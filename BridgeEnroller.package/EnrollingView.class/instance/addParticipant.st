adding
addParticipant
	| lastName firstName club |
	lastName := self request: 'Last name'.
	firstName := self request: 'First name'.
	club := self request: 'Club'.
	tournament participants add: (Player lastName: lastName firstName: firstName club: club)