as yet unclassified
getLink: hostEntity
self halt.
	^ self defineLink
		  hostEntity: hostEntity;
		  foreignEntity: (self detectForeignEntity: hostEntity);
		  yourself