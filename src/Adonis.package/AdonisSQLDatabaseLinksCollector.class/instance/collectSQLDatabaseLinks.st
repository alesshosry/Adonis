as yet unclassified
collectSQLDatabaseLinks

	self sqlJavaLinks do: [ :eachSQLJavaLink |
		(self getJavaHQLLinksFor: eachSQLJavaLink) do: [ :eachJavaHQLLink |
			(self getMappingsFor: eachJavaHQLLink) do: [ :eachMapping |
				(self getHQLDatabaseLinkFor: eachMapping) do: [
					:eachHQLReferenceLink |
					| adonisLink |
					adonisLink := self defineLink
						              referenceEntity: eachSQLJavaLink referenceEntity;
						              resourceEntity:
							              eachHQLReferenceLink resourceEntity.

					self detectedLinks add: adonisLink ] ] ] ]