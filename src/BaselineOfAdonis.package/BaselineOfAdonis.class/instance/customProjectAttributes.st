accessing
customProjectAttributes

	^ PackageOrganizer default packages
		  detect: [ :package |
		  package name = 'BaselineOfAdonis' ]
		  ifFound: [ #(  ) ]
		  ifNone: [ #( #NeedsMoose ) ]