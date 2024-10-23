as yet unclassified
buildBindingsDictionaryFrom: dict ofBindings: bindings

	| items |
	items := self extractItemsFromString: (dict at: #EntityName).

	items do: [ :eachItem |
		| newBinding |
		newBinding := Dictionary new.
		newBinding := dict copy.
		newBinding at: #EntityName put: eachItem.
		bindings add: newBinding ] 