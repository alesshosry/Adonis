initialization
setUp 

	super setUp.
	
	xmlTemplate := 
	'<?xml version="1.0" encoding="UTF-8"?>
		<root>
   			<info>
      			<generated>now</generated>
      			<title>Example XML file</title>
   			</info>
   			<products>
      			<product id="idProduct1">
         			<name id="idName1">product.name</name>
         			<description>clean(product.description)</description>
   				</product>
				<product id="idProduct2">
         			<name id="idName2">product.name</name>
         			<description>clean(product.description)</description>
   				</product>
   			</products>
		</root>'.