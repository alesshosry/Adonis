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

3.	Download manually below repos on your image (until fixing the baseline to be downloaded automatically)
	
```Smalltalk
Metacello new
    baseline: 'MoTion';
    repository: 'github://AlessHosry/MoTion:main';
    load.
```
Make sure to load MoTion-Moose package after downloading it. Then:
```Smalltalk
Metacello new
	baseline: 'XMLParser';
	repository: 'github://pharo-contributions/XML-XMLParser/src';
	load.
```
	
# Usage

The main purpose of XLLDetector is to detect cross languages links that exist between multiple languages in one software application developped using a specific Framework.
We attempt to evoluate this library to cover links established following as much as possible number of frameworks.
Currently it is applicable for projects developed using GWT framework and it is able to detect the links exisiting btween Java and XML.

#### Why MoTion is needed ?
MoTion is a pattern language developped in Pharo and dedicated to match described patterns over trees of objects.
In our case, MoTion is used to define reference and definition patterns and helps us to extract all the variables defined in these patterns that construct the links between multiple languages following each framework rules (the way the framework establishes links between its languages).

## XLLGWTDetector
This is the fist links detector developped to detect links between Java and xml files in projects developpped using GWT framework.
Follow bellow instructions to use it successfully:

1.	Use VerveineJ to generate mse file of the GWT project; Follow instructions here: https://modularmoose.org/moose-wiki/Developers/Parsers/VerveineJ.html
2.	Import mse file to moose image using Moose models browser
3.	Try below code in playground:
	```Smalltalk
	xllGWTDetector := XLLDetectorGWT new.
	xllGWTDetector fillMooseModelAt: 1. 
	links:= xllGWTDetector detectLinks.
	```
4. To detect links only for a specific className, try the below:
	```Smalltalk
	xllGWTDetector := XLLDetectorGWT new.
	xllGWTDetector fillMooseModelAt: 1. 
	links:= xllGWTDetector detectLinksForClass:'yourClassName'.
	```
5.	If you fill multiple moose models, make sure to fill the main model of the detector by changing the index for fillMooseModelAt: method.

Enjoy !