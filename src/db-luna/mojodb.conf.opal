{
	"log" : {
		"appender" : { 
			"type" : "syslog"
		},
		"levels" : {
			/*"default" : "info"*/
		}
	},	
	"db" : {
		"permissions" : [
			{"type":"db.role","object":"admin","caller":"com.palm.configurator","operations":{"*":"allow"}},
			{"type":"db.role","object":"admin","caller":"com.palm.service.backup","operations":{"*":"allow"}},
			{"type":"db.role","object":"admin","caller":"com.palm.odd.service","operations":{"*":"allow"}},
			{"type":"db.role","object":"admin","caller":"com.palm.service.migrationscript","operations":{"*":"allow"}},
			{"type":"db.role","object":"admin","caller":"com.palm.spacecadet","operations":{"*":"allow"}}
		],
		"quotas" : [
			{"owner":"*","size":62914560},
			{"owner":"com.palm.*","size":235929600}
		],
		"loadStepSize" : 173,
		"purgeWindow": 7,
	},
	"bdb" : {
		"cacheSize": 3145728,
		"maxLocks" : 20000,
		"maxLockers" : 1000,
		"compactStepSize" : 25000
	}
}
