initialization
setUp 

	super setUp .
	
	super generateFile: 'connectionDemo.java' andFillData: self connectionDemoTemplate . 
	super generateFile: 'increaseSalariesForDepartment.java' andFillData: self increaseSalariesForDepartmentTemplate . 
	super generateFile: 'jdbcDelete.java' andFillData: self jdbcDeleteTemplate . 
		
	javaModel := FamixJavaModel new. 
	javaModel importFromJSONStream: (self jsonTemplate) readStream. 
	javaModel rootFolder: '/Users/aless/Documents/Work and Papers/Java/JDBC_Variety_Of_Examples_Reduced' asFileReference .  "!!!!! Temporaire"
	"javaModel rootFolder: Smalltalk imageDirectory fullName."
	fastModels := OrderedCollection new.
	javaModel allModelClasses do: [ :eachClass | 
		fastModels add: eachClass generateFastAndBind.	
	].
	