# XLLDetector Installation

To install XLLDetector

1.	Create new Moose image 
2.	Open Moose Playground (`Ctrl+OW`) in your and execute the following Metacello script (select it and press Do-it button or `Ctrl+D`):

```Smalltalk
Metacello new
    baseline: 'XLLDetector';
    repository: 'github://AlessHosry/XLLDetector:main';
    load.
``` 
	
# Usage

The main purpose of XLLDetector is to detect cross languages links that exist between multiple languages in one software application developped using a specific Framework.
We attempt to evoluate this library to cover links established following as much as possible number of frameworks.
Currently it is applicable for projects developed using GWT and JDBC frameworks.

#### Why MoTion is needed ?
MoTion is a pattern matching language developped in Pharo and dedicated to match described patterns over trees of objects.
In our case, MoTion is used to define reference and definition patterns and helps us to extract all the variables defined in these patterns that construct the links between multiple languages following each framework rules (the way the framework establishes links between its languages).

## XLLDetectorGWT
This is the fist links detector developped to detect links between Java and xml files in projects developped using GWT framework.
Follow bellow instructions to use it successfully:

1.	Use VerveineJ to generate mse file of the GWT project; Follow instructions here: https://modularmoose.org/moose-wiki/Developers/Parsers/VerveineJ.html
2.	Import mse file to moose image using Moose models browser
3.	Try below code in playground:
	```Smalltalk
	| xllDetector |
	xllDetector := XLLDetectorGWT new.
	xllDetector fillMainModel: mainModel. "mainModel should be of type FamixJavaModel and can be filled by using for example importFromMSEStream:"
	xllDetector detectAllLinks.
	```
4.	If you fill multiple moose models, make sure to fill the main model correctly each time


## XLLDetectorJDBC
This is the second links detector developped to detect links between Java, properties and XML files in projects developped using JDBC.
Follow bellow instructions to use it successfully:

1.	Use VerveineJ to generate json file of the jdbc project; Follow instructions here: https://modularmoose.org/moose-wiki/Developers/Parsers/VerveineJ.html
2.	Import json file to moose image using Moose models browser
3.	Try below code in playground:
	```Smalltalk
	| xllDetector |
	xllDetector := XLLDetectorJDBC new.
	xllDetector fillMainModel: mainModel.  
	xllDetector detectAllLinks.
	```
4.	If you fill multiple moose models, make sure to fill the main model correctly each time

## XLLDetector

Could be used in general like this:
```Smalltalk
	model := (MooseModelRoot root allModels at: index).
	detector := XLLDetector new.
	detector mainModel: model.
	detector detectAllLinksOfFramework: 'JDBC'. "or : "
	detector detectAllLinksOfFramework: 'GWT'
``` 

Enjoy !