as yet unclassified
buildReferenceEntityForBinding: aBinding

	^ ReferenceEntity new
		  key: 'getProperty';
		  elementName: (aBinding at: 'anyValue');
		  path: (self getPropertiesFullPath:  (aBinding at: 'FileName'));
		  yourself