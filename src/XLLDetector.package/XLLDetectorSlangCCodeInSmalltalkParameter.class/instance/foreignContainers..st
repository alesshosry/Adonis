as yet unclassified
foreignContainers: foreignContainer

| matcher |
matcher := #'allChildren' <=>  RBMessageNode % { 
					#'selector>value' <=> #cCode:inSmalltalk:
			} as: #cCodeMessage.
  
^ (matcher collectBinding: 'cCodeMessage'  for:  foreignContainer) collect: [:each | each arguments first value].