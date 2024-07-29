as yet unclassified
defineExternalDependency

	| xllLink |
	xllLink := ExternalDependency new.
	xllLink externalAgent: self externalAgent.
	xllLink resourceLanguage: self resourceLanguage.
	xllLink referenceLanguage: self referenceLanguage.

	^ xllLink