as yet unclassified
defineLink

	| xllLink |
	xllLink := XLLLink new.
	xllLink framework: self framework.
	xllLink languageDefinition: self definition.
	xllLink languageReference: self reference.

	^ xllLink