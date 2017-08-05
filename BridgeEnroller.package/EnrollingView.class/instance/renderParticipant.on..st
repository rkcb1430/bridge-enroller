rendering
renderParticipant: aParticipant on: html
	html render: aParticipant lastName;
		render: ' ';
		render: aParticipant firstName;
		render: ' (';
		render: aParticipant club;
		render: ')'.
	html break