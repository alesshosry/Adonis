as yet unclassified
collectSQLDatabaseExtDeps

	self sqlJavaExtDeps do: [ :eachSQLJavaLink |
		(self getJavaHQLExtDepsFor: eachSQLJavaLink) do: [ :eachJavaHQLLink |
			(self getMappingsFor: eachJavaHQLLink) do: [ :eachMapping |
				(self getHQLDatabaseExtDepsFor: eachMapping) do: [
					:eachHQLReferenceLink |
					| adonisLink |
					adonisLink := self defineExternalDependency
						              referenceEntity: eachSQLJavaLink referenceEntity;
						              resourceEntity:
							              eachHQLReferenceLink resourceEntity.

					self detectedExternalDependencies add: adonisLink ] ] ] ]