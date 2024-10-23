private - running
buildReferenceEntityForBinding: eachBinding

	^ ReferenceEntity new
		  key: (eachBinding at: 'annotationKey');
		  elementName: (eachBinding at: 'EntityName');
		  path: (eachBinding at: 'FileName');
		  yourself