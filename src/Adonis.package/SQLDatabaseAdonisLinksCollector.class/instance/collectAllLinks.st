as yet unclassified
collectAllLinks

	self groupJavaSQLLinksListByClasses do: [ :each |
		| resourceEntity |
		resourceEntity := self getResourceEntity: each key.

		each values do: [ :eachValue |
			| referenceEntity |
			referenceEntity := eachValue referenceEntity.
			self detectedLinks add: (self
					 buildLinkForReference: referenceEntity
					 andResource: resourceEntity) 
		]
	]