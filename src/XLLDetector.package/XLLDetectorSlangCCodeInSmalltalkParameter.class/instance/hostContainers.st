as yet unclassified
hostContainers
	| senders |
	senders := (SlangClass >> #cCode:inSmalltalk:) senders.
	^ packageName asPackage definedClasses flatCollect: [ :eachClass |
		eachClass methods
			select: [ :m |
				(senders includes: m) and:
				[m pragmas anySatisfy: [ :p |
					(p selector = 'export:') and:
					[(p arguments first) "= true" ] ] ] ]
			thenCollect: [ :m | m ast ] ]
