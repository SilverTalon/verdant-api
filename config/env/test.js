'use strict';

module.exports = {
	db: {
		uri: 'mongodb://localhost/verdant-test',
		options: {
			user: '',
			pass: ''
		}
	},
	port: 5001,
	log: {
		// Can specify one of 'combined', 'common', 'dev', 'short', 'tiny'
		format: 'dev',
		// Stream defaults to process.stdout
		// Uncomment to enable logging to a log on the file system
		options: {
			//stream: 'access.log'
		}
	},
	app: {
		title: 'Verdant - Test Environment'
	}
};
