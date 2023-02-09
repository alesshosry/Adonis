as yet unclassified
getHostContainers

  ^ self mainModel allModelClasses collect: [ :eachClass |  
		eachClass generateFastAndBind.
	]