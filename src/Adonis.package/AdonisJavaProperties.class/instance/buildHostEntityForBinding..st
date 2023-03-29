as yet unclassified
buildHostEntityForBinding: aBinding

	^ HostEntity new
		  key: 'getProperty';
		  elementName: (aBinding at: 'anyValue');
		  path: (self getPropertiesFullPath:  (aBinding at: 'FileName'));
		  yourself