# Adonis Installation

To install Adonis

1.	We encourage you to create new Moose image (to be able to import models)
2.	Open Moose Playground (`Ctrl+OW`) in your and execute the following Metacello script (select it and press Do-it button or `Ctrl+D`):

```Smalltalk
Metacello new
    baseline: 'Adonis';
    repository: 'github://AuthorRepoName/Adonis:main';
    load.
``` 
	
# Usage

The main purpose of Adonis is to detect external depdencies that exist between heterogeneous components (different programing languages, different tiers, documentation and comments ...) in one software application developped using a specific external agent (ex: framework).
We attempt to evoluate this library to cover depdencies established following as much as possible number of external agents.
Currently it is applicable for projects developed using GWT, RMI, Java Hibernate and Java projects embedding SQL queries.

#### Why MoTion is needed ?
MoTion is a pattern matching language developped in Pharo and dedicated to match described patterns over objects.
In our case, MoTion is used to detect entities (resource and reference) and containers (xml file, Java method ...) following each external agent's rules (the way the external agent establishes dependencies between its heterogeneous components).

## AdonisGWT
This is the first detector developped; its main task is to identify the external dependencies between Java and xml files in projects developped using GWT framework.
Follow bellow instructions to use it successfully:

1.	Use VerveineJ to generate mse file of the GWT project; Follow instructions here: https://modularmoose.org/moose-wiki/Developers/Parsers/VerveineJ.html
2.	Import mse file to moose image using Moose models browser
3.	Try below code in playground:
	```Smalltalk
	| adonis |
	adonis := AdonisGWT new.
	adonis fillMainModel: mainModel. "mainModel should be of type FamixJavaModel and can be filled by using for example importFromMSEStream:"
	adonis detectAllLinks.
	```
4.	If you fill multiple moose models, make sure to fill the main model correctly each time

## AdonisRMI
This is the second detector for Java RMI projects.
Follow bellow instructions to use it successfully:

1.	Use VerveineJ to generate mse file of the GWT project; Follow instructions here: https://modularmoose.org/moose-wiki/Developers/Parsers/VerveineJ.html
2.	Import mse file to moose image using Moose models browser
3.	Try below code in playground:
	```Smalltalk
	| adonis |
	adonis := AdonisRMI new.
	adonis fillMainModel: mainModel. "mainModel, represents the server APIs, should be of type FamixJavaModel and can be filled by using for example importFromMSEStream:"
 	adonis fillClientModel: aClientModel. "aClientModel, represents the client program, should be of type FamixJavaModel and can be filled by using for example importFromMSEStream:"
 	adonis detectAllLinks.
	```
4.	If you fill multiple moose models, make sure to fill the main model correctly each time

## AdonisJavaHibernate
This is the third external dependencies detector developped to detect dependencies between 4 groups: xml files and the database, xml files and Java class, Java classes and HQL queries and finally HQL queries and the database.
Follow bellow instructions to use it successfully:

1.	Use VerveineJ to generate json file of the jdbc project; Follow instructions here: https://modularmoose.org/moose-wiki/Developers/Parsers/VerveineJ.html
2.	Import json file to moose image using Moose models browser.
3.	Use Carrefour to generate FAST model (for more info check this link: https://modularmoose.org/posts/2022-06-30-carrefour)
4.	Import SQL database schema using FamixSQL (for more info check this link: https://modularmoose.org/moose-wiki/Users/famix-sql/getting-started-with-famixsql.html)
5.	Try below code in playground:
	```Smalltalk
	| adonis |
	a := AdonisJavaHibernate new.
	a fillMainModel: aFASTJavaModel.
	a fillSQLModel: aSQLModel.
	a detectAllLinks .
	```
6.	If you fill multiple moose models, make sure to fill the main model correctly each time

## AdonisJavaSQL

This is the fourth detector dedicated to identify extebrnal depdencies between SQL queries embedded directly in Java programs and database entities.
Use it the same as **AdonisJavaHibernate**, but replace the object type with **AdonisJavaSQL**


## Generic Adonis

Could be used in general like this:
```Smalltalk
	model := (MooseModelRoot root allModels at: index).
	adonis := Adonis new.
	adonis mainModel: model.
	adonis detectAllLinksOfExternalAgent: 'JavaHQL'. "for AdonisJavaHibernate"
	adonis detectAllLinksOfExternalAgent: 'GWT'. "for AdonisJavaHibernate"
``` 

Enjoy !
