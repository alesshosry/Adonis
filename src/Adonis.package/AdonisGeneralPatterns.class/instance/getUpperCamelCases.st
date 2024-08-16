as yet unclassified
getUpperCamelCases

	"^ '\b[A-Z][a-zA-Z\d]+\b' asRegex"
	^ '`([A-Z][a-z0-9]+)+`' asRegex
 