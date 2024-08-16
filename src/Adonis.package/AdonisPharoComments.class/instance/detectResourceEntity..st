private - running
detectResourceEntity: aReferenceEntity

	"| class |
	class := nil.
	self class environment
		at: aReferenceEntity elementName asSymbol
		ifPresent: [
			class := self class environment at:
				         aReferenceEntity elementName asSymbol ].
	^ self buildResourceEntityFor: class"
	
| class |
class := self class environment at: aReferenceEntity elementName asSymbol ifPresent: [ :foundClass | foundClass ].
^ self buildResourceEntityFor: class.