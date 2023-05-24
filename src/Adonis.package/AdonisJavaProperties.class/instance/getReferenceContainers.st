as yet unclassified
getReferenceContainers

  ^ self mainModel allModelClasses collect: [ :eachClass |  
		eachClass generateFastAndBind.
	]