as yet unclassified
hostContainer
	| senders |
	senders := (SlangClass >> #cCode:inSmalltalk:) senders.
	'VMMaker' asPackage definedClasses flatCollect: [ :eachClass |
		eachClass methods
			select: [ :m |
				(senders includes: m) and:
				[m pragmas anySatisfy: [ :p |
					(p selector = 'export:') and:
					[(p arguments first) "= true" ] ] ] ]
			thenCollect: [ :m | m ast ] ]
