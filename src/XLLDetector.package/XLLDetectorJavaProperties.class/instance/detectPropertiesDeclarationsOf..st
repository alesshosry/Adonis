as yet unclassified
detectPropertiesDeclarationsOf: aFastModel

	| generalPattern |
	generalPattern := XLLJavaPatterns new.
	^ (generalPattern _defineObjectDeclParamUsing: 'Properties')
		  collectBinding: #anyName
		  for: aFastModel