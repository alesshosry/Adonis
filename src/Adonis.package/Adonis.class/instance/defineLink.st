as yet unclassified
defineLink

	| xllLink |
	xllLink := AdonisLink new.
	xllLink framework: self framework.
	xllLink resourceLanguage: self resourceLanguage.
	xllLink referenceLanguage: self referenceLanguage.

	^ xllLink