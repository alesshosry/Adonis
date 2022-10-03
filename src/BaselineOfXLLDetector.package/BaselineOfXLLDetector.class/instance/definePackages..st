baselines
definePackages: spec
	^ spec
			package: #XLLDetector;
			package: #'XLLDetector-Tests' with: [ spec requires: #( 'XLLDetector' ) ];		 
			group: 'default' with: #( 'XLLDetector' 'XLLDetector-Tests' )
		yourself