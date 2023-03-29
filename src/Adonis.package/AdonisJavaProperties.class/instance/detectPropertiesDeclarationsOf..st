as yet unclassified
detectPropertiesDeclarationsOf: aFastModel

	| generalPattern |
	generalPattern := AdonisJavaPatterns new.
	^ (generalPattern defineObjectDeclParamUsing: 'Properties')
		  collectBinding: #anyName
		  for: aFastModel