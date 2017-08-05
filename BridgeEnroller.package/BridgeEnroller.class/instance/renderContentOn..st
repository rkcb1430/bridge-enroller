rendering
renderContentOn: html
	html anchor
		callback: [ self addTournament  ];
		with: 'Add new tournament'.
	Tournament tournaments do: [ :tournament | 
		html paragraph: [ self renderTournament: tournament on: html ] ]