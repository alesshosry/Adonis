private - running
extractXMLPathFromJava: javaPath 

		| xmlPath | 
		
		" Here we are extracting xml file path in order to parse it in a later stage. In GWT, the convenient ui.XML file is vailable under the same root folder of the .java file ."
		xmlPath := javaPath removeSuffix: '.java'.
		xmlPath := self mainModel  rootFolder asFileReference 
		                   / (xmlPath , '.ui.xml'). 
				
		^ xmlPath.		
	
