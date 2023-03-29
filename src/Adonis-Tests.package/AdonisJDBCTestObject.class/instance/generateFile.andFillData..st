as yet unclassified
generateFile: fileName andFillData: data

	(Smalltalk imageDirectory asFileReference  / fileName) asFileReference writeStreamDo: [ :stream |
		stream nextPutAll: data ]