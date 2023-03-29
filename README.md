# Adonis Installation

To install Adonis

1.	Create new Moose image 
2.	Open Moose Playground (`Ctrl+OW`) in your and execute the following Metacello script (select it and press Do-it button or `Ctrl+D`):

```Smalltalk
Metacello new
    baseline: 'Adonis';
    repository: 'github://AlessHosry/Adonis:main';
    load.
``` 
	
# Usage

The main purpose of Adonis is to detect cross languages links that exist between multiple languages in one software application developped using a specific Framework.
We attempt to evoluate this library to cover links established following as much as possible number of frameworks.
Currently it is applicable for projects developed using GWT and JDBC frameworks.

#### Why MoTion is needed ?
MoTion is a pattern matching language developped in Pharo and dedicated to match described patterns over trees of objects.
In our case, MoTion is used to define reference and definition patterns and helps us to extract all the variables defined in these patterns that construct the links between multiple languages following each framework rules (the way the framework establishes links between its languages).

## AdonisGWT
This is the fist links detector developped to detect links between Java and xml files in projects developped using GWT framework.
Follow bellow instructions to use it successfully:

1.	Use VerveineJ to generate mse file of the GWT project; Follow instructions here: https://modularmoose.org/moose-wiki/Developers/Parsers/VerveineJ.html
2.	Import mse file to moose image using Moose models browser
3.	Try below code in playground:
	```Smalltalk
	| adonis |
	adonis := Adonis new.
	adonis fillMainModel: mainModel. "mainModel should be of type FamixJavaModel and can be filled by using for example importFromMSEStream:"
	adonis detectAllLinks.
	```
4.	If you fill multiple moose models, make sure to fill the main model correctly each time


## AdonisJDBC
This is the second links detector developped to detect links between Java, properties and XML files in projects developped using JDBC.
Follow bellow instructions to use it successfully:

1.	Use VerveineJ to generate json file of the jdbc project; Follow instructions here: https://modularmoose.org/moose-wiki/Developers/Parsers/VerveineJ.html
2.	Import json file to moose image using Moose models browser
3.	Try below code in playground:
	```Smalltalk
	| adonis |
	adonis := AdonisJDBC new.
	adonis fillMainModel: mainModel.  
	adonis detectAllLinks.
	```
4.	If you fill multiple moose models, make sure to fill the main model correctly each time

## Adonis

Could be used in general like this:
```Smalltalk
	model := (MooseModelRoot root allModels at: index).
	adonis := Adonis new.
	adonis mainModel: model.
	adonis detectAllLinksOfFramework: 'JDBC'. "or : "
	adonis detectAllLinksOfFramework: 'GWT'
``` 

Enjoy !