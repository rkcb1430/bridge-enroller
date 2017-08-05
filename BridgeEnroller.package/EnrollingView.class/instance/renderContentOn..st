rendering
renderContentOn: html
	| count |
	html render: 'Name of the tournament: ';
		render: tournament name.
	html break.
	html render: 'Venue: ';
		render: tournament venue.
	html break.
	html render: 'Fee, euros per person: '; 
		render: tournament fee.
	html break.
	html render: 'Start time: ';
		render: tournament startTime.
	html break.
	html render: 'Last enrollment time: ';
		render: tournament enrollmentEndTime.
	html break.
	html render: 'Entries so far: ';
		render: (tournament participants size).
	html break.
	(DateAndTime current < tournament enrollmentEndTime) ifTrue:  [ 
		html anchor 
			callback: [ self addParticipant  ];
			with: 'Enroll in the tourament!'.
	] ifFalse: [
		html render: 'You cannot enroll any longer!'.
	].
	html break.
	html anchor
		callback: [ self save ];
		with: 'Go back'.
	count := 0.
	(tournament participants size > 0) ifTrue: [ 
		html break.
		html break.
		html text: 'Entries:'.
		html break.
		html break.
		tournament participants do: [ :participant | 
			count := count + 1.
			html render: count;
				render: '. '.
			self renderParticipant: participant on: html.
		].
	]