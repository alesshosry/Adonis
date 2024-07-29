as yet unclassified
detectJavaSQLQueriesFor: aModel ofResourceContainers: containers

	|javaSQLQueriesDetector|

	javaSQLQueriesDetector := AdonisJavaSQL new.
	javaSQLQueriesDetector fillMainModel: aModel.
	javaSQLQueriesDetector resourceContainers: containers.
	javaSQLQueriesDetector detectAllExternalDependencies.
	^ javaSQLQueriesDetector.