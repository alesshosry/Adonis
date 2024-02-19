as yet unclassified
groupJavaSQLLinksListByClasses

	^ self sqlJavaLinks groupedBy: [:each | each resourceEntity element]
	
	