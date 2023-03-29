as yet unclassified
defineLink

	| xllLink |
	xllLink := AdonisLink new.
	xllLink framework: self framework.
	xllLink foreignLanguage: self foreignLanguage.
	xllLink hostLanguage: self hostLanguage.

	^ xllLink