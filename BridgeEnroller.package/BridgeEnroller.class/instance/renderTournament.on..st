rendering
renderTournament: tournament on: html
	html anchor 
		callback: [ self showTournament: tournament ];
		with: (tournament name).
	html render: ', '; render: (tournament venue); render: ' '; render: (tournament startTime).
	html text: ' ('.
	html anchor 
		callback: [ self editTournament: tournament  ];
		with: 'edit'.
	html space.
	html anchor
		callback: [ self removeTournament: tournament  ];
		with: 'remove'.
	html text: ')'