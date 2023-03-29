as yet unclassified
defineLink

	| xllLink |
	xllLink := XLLLink new.
	xllLink framework: self framework.
	xllLink foreignLanguage: self foreignLanguage.
	xllLink hostLanguage: self hostLanguage.

	^ xllLink