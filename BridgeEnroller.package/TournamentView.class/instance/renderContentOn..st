rendering
renderContentOn: html
	html form: [ 
		html text: 'Name: '.
		html textInput
			callback: [ :value | self tournament name: value ];
			value: self tournament name.
		html break.
		html text: 'Venue: '.
		html textInput
			callback: [ :value | self tournament venue: value ];
			value: self tournament venue.
		html break.
		html text: 'Fee: '.
		html textInput
			callback: [ :value |self tournament fee: value  ];
			value: self tournament fee.
		html break.
		html text: 'Start time: '.
		html textInput
			callback: [ :value | self tournament startTime: (DateAndTime fromString: value) ];
			value: self tournament startTime.
		html break.
		html text: 'Enrollment end time: '.
		html textInput
			callback: [ :value | self tournament enrollmentEndTime:  (DateAndTime fromString: value) ];
			value: self tournament enrollmentEndTime.
		html break.
		html submitButton 
			callback: [ self save ];
			value: 'Save'
		 ]