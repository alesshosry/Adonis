as yet unclassified
fillMooseModelAt: index

	 "	Since GWT framework uses Java language, we followed the below proccess in order to parse java files:
		1- Use VerveineJ to generate an mse or JSON file
		2- Import the generated file in Moose
		3- fill the sourceModel (which is mainly the referenceModel) of the detector using Moose model "
	
	 self mainModel: (MooseModelRoot root allModels at: index).