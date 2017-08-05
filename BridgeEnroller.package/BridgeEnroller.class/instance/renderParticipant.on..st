rendering
renderParticipant: participant on: html
	html render: participant lastName;
	render: ', ';
	render: participant firstName;
	render: ' (';
	render: participant club;
	render: ')'
		