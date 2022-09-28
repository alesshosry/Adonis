as yet unclassified
htmlElements

	| htmlElements |
	
	htmlElements := Dictionary new. 
	htmlElements at: 'SpanElement' put: {'span'}.
	htmlElements at: 'AnchorElement' put: {'a'}.
	htmlElements at: 'AreaElement' put: {'area'}.
	htmlElements at: 'BaseElement' put: {'base'}.
	htmlElements at: 'BodyElement' put: {'body'}.
	htmlElements at: 'BRElement' put: {'br'}.
	htmlElements at: 'ButtonElement' put: {'button'}.
	htmlElements at: 'CanvasElement' put: {'canvas'}.
	htmlElements at: 'DivElement' put: {'div'}.
	htmlElements at: 'DListElement' put: {'dl'}.
	"htmlElements at: 'Element' put: ''."
	htmlElements at: 'FieldSetElement' put: {'fieldset'}.
	htmlElements at: 'FormElement' put: {'form'}.
	htmlElements at: 'FrameElement' put: {'frame'}.
	htmlElements at: 'FrameSetElement' put: {'frameset'}.
	htmlElements at: 'HeadElement' put: {'head'}.
	htmlElements at: 'HeadingElement' put: {'h1'. 'h2'. 'h3'. 'h4'. 'h5'. 'h6'}.
	htmlElements at: 'HRElement' put: {'hr'}.
	htmlElements at: 'IFrameElement' put: {'iframe'}.
	htmlElements at: 'ImageElement' put: {'img'}.
	htmlElements at: 'InputElement' put: {'input'}.
	htmlElements at: 'LabelElement' put: {'label'}.
	htmlElements at: 'LegendElement' put: {'legend'}.
	htmlElements at: 'LIElement' put: {'li'}.
	htmlElements at: 'LinkElement' put: {'link'}.
	htmlElements at: 'MapElement' put: {'map'}.
	htmlElements at: 'AudioElement' put: {'audio'}.
	htmlElements at: 'VideoElement' put: {'video'}.
	htmlElements at: 'MetaElement' put: {'meta'}.
	htmlElements at: 'ModElement' put: {'ins'. 'del'}.
	htmlElements at: 'ObjectElement' put: {'object'}.
	htmlElements at: 'OListElement' put: {'ol'}.
	htmlElements at: 'OptGroupElement' put: {'optgroup'}.
	htmlElements at: 'OptionElement' put: {'option'}.
	htmlElements at: 'ParagraphElement' put: {'p'}.
	htmlElements at: 'ParamElement' put: {'param'}.
	htmlElements at: 'PreElement' put: {'pre'}.
	htmlElements at: 'QuoteElement' put: {'blockquote'. 'q'}.
	htmlElements at: 'ScriptElement' put: {'script'}.
	htmlElements at: 'SelectElement' put: {'select'}.
	htmlElements at: 'SourceElement' put: {'source'}.
	htmlElements at: 'SpanElement' put: {'span'}.
	htmlElements at: 'StyleElement' put: {'style'}.
	htmlElements at: 'TableCaptionElement' put: {'caption'}.
	htmlElements at: 'TableCellElement' put: {'th'. 'td'}.
	htmlElements at: 'TableColElement' put: {'col'. 'colgroup'}.
	htmlElements at: 'TableElement' put: {'table'}.
	htmlElements at: 'TableRowElement' put: {'tr'}.
	htmlElements at: 'TableSectionElement' put: {'tbody'. 'tfoot'. 'thead'}.
	htmlElements at: 'TextAreaElement' put: {'textarea'}.
	htmlElements at: 'TitleElement' put: {'title'}.
	htmlElements at: 'UListElement' put: {'ul'}. 
	
	^ htmlElements.
	
	
