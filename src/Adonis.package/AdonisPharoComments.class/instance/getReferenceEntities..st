as yet unclassified
getReferenceEntities: eachHostContainer

	^ (self collectBindingsFromContainer: eachHostContainer) collect: [
		  :e |
		  self
			  buildReferenceEntityFor:( e copyReplaceAll: '`' with: '')
			  using: '`'
			  path: eachHostContainer value comment ]