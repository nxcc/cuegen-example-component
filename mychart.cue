package kube

values: {
	app: {
		authtoken: string
	}
	db: {
		host:     string
		port:     int
		username: string
		password: string
	}
}

secret: mysecret: {
	data: {
		AUTH_TOKEN:        '\(values.add.authtoken)'
		DATABASE_USER:     '\(values.db.username)'
		DATABASE_PASSWORD: '\(values.db.password)'
		DEMO_DSN:
			'postgresql://' +
			'\(values.db.username):\(values.db.password)@' +
			'\(values.db.host):\(values.db.port)'
	}
}
