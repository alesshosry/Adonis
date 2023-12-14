as yet unclassified
getFileFromDirectoryBasedOnName: aFileName

"the file name can be full or part of it like : .hbm.xml"

^ FileReference % { 
	#'children*' <=> FileReference %{
		#isFile <=> true.
		#basename <=> aFileName asSymbol  .
	}as: 'myFile'
 }.