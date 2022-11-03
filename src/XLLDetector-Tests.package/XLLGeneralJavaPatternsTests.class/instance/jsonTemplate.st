accessing
jsonTemplate

	^ '
	[
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 1,
      "element": {
         "ref": 248
      },
      "endPos": 175,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Calling Stored Procedures/src/stored/procedures/in/IncreaseSalariesForDepartment.java",
      "startPos": 130
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 2,
      "element": {
         "ref": 5
      },
      "endPos": 1516,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Basic JDBC Operations/src/JdbcDelete.java",
      "startPos": 1425
   },
   {
      "FM3": "Famix-Java-Entities.Method",
      "id": 3,
      "name": "main",
      "cyclomaticComplexity": 3,
      "declaredType": {
         "ref": 295
      },
      "isClassSide": true,
      "numberOfStatements": 16,
      "parentType": {
         "ref": 189
      },
      "signature": "main()",
      "visibility": "public"
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 4,
      "element": {
         "ref": 153
      },
      "endPos": 1862,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Calling Stored Procedures/src/stored/procedures/in/IncreaseSalariesForDepartment.java",
      "startPos": 1791
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 5,
      "candidates": [
         {
            "ref": 326
         }
      ],
      "previous": {
         "ref": 74
      },
      "sender": {
         "ref": 284
      },
      "signature": "executeUpdate(\"delete from employees where last_name=''Hosry'' and first_name=''Aless''\")"
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 6,
      "element": {
         "ref": 202
      },
      "endPos": 1313,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Basic JDBC Operations/src/JdbcDelete.java",
      "startPos": 1257
   },
   {
      "FM3": "Famix-Java-Entities.ImplicitVariable",
      "id": 7,
      "name": "self",
      "isStub": true,
      "parentBehaviouralEntity": {
         "ref": 3
      }
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 8,
      "element": {
         "ref": 20
      },
      "endPos": 1628,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Calling Stored Procedures/src/stored/procedures/in/IncreaseSalariesForDepartment.java",
      "startPos": 1615
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 9,
      "candidates": [
         {
            "ref": 187
         }
      ],
      "sender": {
         "ref": 3
      },
      "signature": "getConnection(MYSQL_URL,USER,PASSWORD)"
   },
   {
      "FM3": "Famix-Java-Entities.Inheritance",
      "id": 10,
      "subclass": {
         "ref": 228
      },
      "superclass": {
         "ref": 232
      }
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 11,
      "candidates": [
         {
            "ref": 129
         }
      ],
      "previous": {
         "ref": 225
      },
      "sender": {
         "ref": 319
      },
      "signature": "executeQuery()"
   },
   {
      "FM3": "Famix-Java-Entities.LocalVariable",
      "id": 12,
      "name": "e",
      "parentBehaviouralEntity": {
         "ref": 284
      }
   },
   {
      "FM3": "Famix-Java-Entities.Class",
      "id": 13,
      "name": "SQLException",
      "isStub": true,
      "typeContainer": {
         "ref": 329
      }
   },
   {
      "FM3": "Famix-Java-Entities.Attribute",
      "id": 14,
      "name": "SELECT_LAST_FIRST_NAME_EMAIL_FROM_EMPLOYEES_WHERE",
      "parentType": {
         "ref": 98
      }
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 15,
      "element": {
         "ref": 42
      },
      "endPos": 1025,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Basic JDBC Operations/src/JdbcDelete.java",
      "startPos": 971
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 16,
      "element": {
         "ref": 139
      },
      "endPos": 2057,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Basic JDBC Operations/src/JdbcDelete.java",
      "startPos": 1984
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 17,
      "candidates": [
         {
            "ref": 146
         }
      ],
      "previous": {
         "ref": 65
      },
      "sender": {
         "ref": 3
      },
      "signature": "setDouble(2,theIncreaseAmount)"
   },
   {
      "FM3": "Famix-Java-Entities.LocalVariable",
      "id": 18,
      "name": "email",
      "parentBehaviouralEntity": {
         "ref": 50
      }
   },
   {
      "FM3": "Famix-Java-Entities.CaughtException",
      "id": 19,
      "definingEntity": {
         "ref": 329
      },
      "exceptionClass": {
         "ref": 13
      }
   },
   {
      "FM3": "Famix-Java-Entities.LocalVariable",
      "id": 20,
      "name": "e",
      "parentBehaviouralEntity": {
         "ref": 3
      }
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 21,
      "element": {
         "ref": 300
      },
      "endPos": 1736,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Calling Stored Procedures/src/stored/procedures/in/IncreaseSalariesForDepartment.java",
      "startPos": 1720
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 22,
      "element": {
         "ref": 281
      },
      "endPos": 2293,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Calling Stored Procedures/src/stored/procedures/in/IncreaseSalariesForDepartment.java",
      "startPos": 2266
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 23,
      "element": {
         "ref": 12
      },
      "endPos": 1768,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Basic JDBC Operations/src/JdbcDelete.java",
      "startPos": 1755
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 24,
      "element": {
         "ref": 80
      },
      "endPos": 2439,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Basic JDBC Operations/src/JdbcDelete.java",
      "startPos": 2399
   },
   {
      "FM3": "Famix-Java-Entities.LocalVariable",
      "id": 25,
      "name": "props",
      "parentBehaviouralEntity": {
         "ref": 329
      }
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 26,
      "element": {
         "ref": 294
      },
      "endPos": 414,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Database Configuration/src/ConnectionDemo.java",
      "startPos": 346
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 27,
      "element": {
         "ref": 140
      },
      "endPos": 2978,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Basic JDBC Operations/src/JdbcDelete.java",
      "startPos": 2965
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 28,
      "element": {
         "ref": 115
      },
      "endPos": 1206,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Basic JDBC Operations/src/JdbcDelete.java",
      "startPos": 1169
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 29,
      "element": {
         "ref": 273
      },
      "endPos": 1545,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Calling Stored Procedures/src/stored/procedures/in/IncreaseSalariesForDepartment.java",
      "startPos": 1504
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 30,
      "element": {
         "ref": 193
      },
      "endPos": 1914,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Basic JDBC Operations/src/JdbcDelete.java",
      "startPos": 1900
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 31,
      "element": {
         "ref": 142
      },
      "endPos": 1879,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Basic JDBC Operations/src/JdbcDelete.java",
      "startPos": 1863
   },
   {
      "FM3": "Famix-Java-Entities.CaughtException",
      "id": 32,
      "definingEntity": {
         "ref": 50
      },
      "exceptionClass": {
         "ref": 92
      }
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 33,
      "element": {
         "ref": 158
      },
      "endPos": 1129,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Database Configuration/src/ConnectionDemo.java",
      "startPos": 1081
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 34,
      "element": {
         "ref": 57
      },
      "endPos": 2660,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Basic JDBC Operations/src/JdbcDelete.java",
      "startPos": 2595
   },
   {
      "FM3": "Famix-Java-Entities.Class",
      "id": 35,
      "name": "Properties",
      "isStub": true,
      "typeContainer": {
         "ref": 329
      }
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 36,
      "element": {
         "ref": 291
      },
      "endPos": 1389,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Calling Stored Procedures/src/stored/procedures/in/IncreaseSalariesForDepartment.java",
      "startPos": 1233
   },
   {
      "FM3": "Famix-Java-Entities.Method",
      "id": 37,
      "name": "execute",
      "isStub": true,
      "parentType": {
         "ref": 228
      },
      "signature": "execute()",
      "visibility": "package"
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 38,
      "element": {
         "ref": 79
      },
      "endPos": 1336,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Database Configuration/src/ConnectionDemo.java",
      "startPos": 1309
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 39,
      "element": {
         "ref": 311
      },
      "endPos": 382,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Basic JDBC Operations/src/JdbcDelete.java",
      "startPos": 367
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 40,
      "element": {
         "ref": 226
      },
      "endPos": 2159,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Basic JDBC Operations/src/JdbcDelete.java",
      "startPos": 2130
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 41,
      "element": {
         "ref": 74
      },
      "endPos": 1390,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Basic JDBC Operations/src/JdbcDelete.java",
      "startPos": 1348
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 42,
      "candidates": [
         {
            "ref": 58
         }
      ],
      "previous": {
         "ref": 54
      },
      "sender": {
         "ref": 284
      },
      "signature": "println(\"Database connection successful!\\n\")"
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 43,
      "candidates": [
         {
            "ref": 234
         }
      ],
      "previous": {
         "ref": 250
      },
      "sender": {
         "ref": 50
      },
      "signature": "printStackTrace()"
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 44,
      "endPos": 1499,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Database Configuration/src/ConnectionDemo.java",
      "startPos": 1486
   },
   {
      "FM3": "Famix-Java-Entities.Method",
      "id": 45,
      "name": "FileInputStream",
      "isStub": true,
      "kind": "constructor",
      "parentType": {
         "ref": 221
      },
      "signature": "FileInputStream(?)",
      "visibility": "package"
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 46,
      "element": {
         "ref": 135
      },
      "endPos": 1488,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Calling Stored Procedures/src/stored/procedures/in/IncreaseSalariesForDepartment.java",
      "startPos": 1434
   },
   {
      "FM3": "Famix-Java-Entities.Inheritance",
      "id": 47,
      "subclass": {
         "ref": 98
      },
      "superclass": {
         "ref": 232
      }
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 48,
      "element": {
         "ref": 336
      },
      "endPos": 3013,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Basic JDBC Operations/src/JdbcDelete.java",
      "startPos": 2995
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 49,
      "element": {
         "ref": 112
      },
      "endPos": 581,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Database Configuration/src/ConnectionDemo.java",
      "startPos": 539
   },
   {
      "FM3": "Famix-Java-Entities.Method",
      "id": 50,
      "name": "displayEmployee",
      "cyclomaticComplexity": 7,
      "declaredType": {
         "ref": 295
      },
      "isClassSide": true,
      "numberOfStatements": 17,
      "parentType": {
         "ref": 98
      },
      "signature": "displayEmployee()",
      "visibility": "private"
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 51,
      "candidates": [
         {
            "ref": 272
         }
      ],
      "previous": {
         "ref": 182
      },
      "receiver": {
         "ref": 131
      },
      "sender": {
         "ref": 284
      },
      "signature": "displayEmployee(myConn,\"John\",\"Doe\")"
   },
   {
      "FM3": "Famix-Java-Entities.Attribute",
      "id": 52,
      "name": "SELECT_FROM_EMPLOYEES",
      "parentType": {
         "ref": 327
      }
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 53,
      "element": {
         "ref": 197
      },
      "endPos": 1984,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Calling Stored Procedures/src/stored/procedures/in/IncreaseSalariesForDepartment.java",
      "startPos": 1957
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 54,
      "candidates": [
         {
            "ref": 201
         }
      ],
      "previous": {
         "ref": 78
      },
      "sender": {
         "ref": 284
      },
      "signature": "createStatement()"
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 55,
      "element": {
         "ref": 70
      },
      "endPos": 1337,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Database Configuration/src/ConnectionDemo.java",
      "startPos": 1221
   },
   {
      "FM3": "Famix-Java-Entities.Parameter",
      "id": 56,
      "name": "args",
      "parentBehaviouralEntity": {
         "ref": 284
      }
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 57,
      "candidates": [
         {
            "ref": 108
         }
      ],
      "previous": {
         "ref": 121
      },
      "sender": {
         "ref": 50
      },
      "signature": "format(\"%s %s, %s\\n\",theFirstName,theLastName,email)"
   },
   {
      "FM3": "Famix-Java-Entities.Method",
      "id": 58,
      "name": "println",
      "isStub": true,
      "parentType": {
         "ref": 228
      },
      "signature": "println(?)",
      "visibility": "package"
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 59,
      "candidates": [
         {
            "ref": 249
         }
      ],
      "previous": {
         "ref": 192
      },
      "sender": {
         "ref": 50
      },
      "signature": "next()"
   },
   {
      "FM3": "Famix-Java-Entities.Inheritance",
      "id": 60,
      "subclass": {
         "ref": 189
      },
      "superclass": {
         "ref": 232
      }
   },
   {
      "FM3": "Famix-Java-Entities.Type",
      "id": 61,
      "name": "CallableStatement",
      "isStub": true,
      "typeContainer": {
         "ref": 189
      }
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 62,
      "candidates": [
         {
            "ref": 147
         }
      ],
      "previous": {
         "ref": 301
      },
      "sender": {
         "ref": 329
      },
      "signature": "getProperty(\"user\")"
   },
   {
      "FM3": "Famix-Java-Entities.Method",
      "id": 63,
      "name": "<Initializer>",
      "cyclomaticComplexity": 0,
      "numberOfStatements": 0,
      "parentType": {
         "ref": 189
      },
      "signature": "<Initializer>()",
      "visibility": "package"
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 64,
      "element": {
         "ref": 306
      },
      "endPos": 1154,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Basic JDBC Operations/src/JdbcDelete.java",
      "startPos": 1113
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 65,
      "candidates": [
         {
            "ref": 167
         }
      ],
      "previous": {
         "ref": 290
      },
      "sender": {
         "ref": 3
      },
      "signature": "setString(1,theDepartment)"
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 66,
      "candidates": [
         {
            "ref": 81
         }
      ],
      "previous": {
         "ref": 95
      },
      "sender": {
         "ref": 50
      },
      "signature": "getString(\"first_name\")"
   },
   {
      "FM3": "Famix-Java-Entities.Class",
      "id": 67,
      "name": "Properties",
      "isStub": true,
      "typeContainer": {
         "ref": 329
      }
   },
   {
      "FM3": "Famix-Java-Entities.Type",
      "id": 68,
      "name": "String",
      "isStub": true,
      "typeContainer": {
         "ref": 98
      }
   },
   {
      "FM3": "Famix-Java-Entities.Type",
      "id": 69,
      "name": "PreparedStatement",
      "isStub": true,
      "typeContainer": {
         "ref": 98
      }
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 70,
      "candidates": [
         {
            "ref": 58
         }
      ],
      "previous": {
         "ref": 315
      },
      "sender": {
         "ref": 329
      },
      "signature": "println(myRs.getString(\"last_name\") + \", \" + myRs.getString(\"first_name\"))"
   },
   {
      "FM3": "Famix-Java-Entities.Method",
      "id": 71,
      "name": "showSalaries",
      "isStub": true,
      "parentType": {
         "ref": 228
      },
      "signature": "showSalaries(?,?)",
      "visibility": "package"
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 72,
      "element": {
         "ref": 51
      },
      "endPos": 1734,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Basic JDBC Operations/src/JdbcDelete.java",
      "startPos": 1697
   },
   {
      "FM3": "Famix-Java-Entities.Class",
      "id": 73,
      "name": "SQLException",
      "isStub": true,
      "typeContainer": {
         "ref": 284
      }
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 74,
      "candidates": [
         {
            "ref": 326
         }
      ],
      "previous": {
         "ref": 202
      },
      "sender": {
         "ref": 284
      },
      "signature": "executeUpdate(DELETE_FROM_EMPLOYEES)"
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 75,
      "candidates": [
         {
            "ref": 187
         }
      ],
      "previous": {
         "ref": 205
      },
      "sender": {
         "ref": 329
      },
      "signature": "getConnection(theDBurl,theUser,thePassword)"
   },
   {
      "FM3": "Famix-Java-Entities.Class",
      "id": 76,
      "name": "SQLException",
      "isStub": true,
      "typeContainer": {
         "ref": 50
      }
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 77,
      "element": {
         "ref": 238
      },
      "endPos": 1619,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Database Configuration/src/ConnectionDemo.java",
      "startPos": 1601
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 78,
      "candidates": [
         {
            "ref": 187
         }
      ],
      "sender": {
         "ref": 284
      },
      "signature": "getConnection(MYSQL_URL,USER,PASSWORD)"
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 79,
      "candidates": [
         {
            "ref": 81
         }
      ],
      "previous": {
         "ref": 125
      },
      "sender": {
         "ref": 329
      },
      "signature": "getString(\"first_name\")"
   },
   {
      "FM3": "Famix-Java-Entities.LocalVariable",
      "id": 80,
      "name": "theLastName",
      "parentBehaviouralEntity": {
         "ref": 50
      }
   },
   {
      "FM3": "Famix-Java-Entities.Method",
      "id": 81,
      "name": "getString",
      "isStub": true,
      "parentType": {
         "ref": 228
      },
      "signature": "getString(?)",
      "visibility": "package"
   },
   {
      "FM3": "Famix-Java-Entities.Type",
      "id": 82,
      "name": "FileInputStream",
      "isStub": true,
      "typeContainer": {
         "ref": 327
      }
   },
   {
      "FM3": "Famix-Java-Entities.Parameter",
      "id": 83,
      "name": "theDepartment",
      "parentBehaviouralEntity": {
         "ref": 319
      }
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 84,
      "element": {
         "ref": 267
      },
      "endPos": 2396,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Calling Stored Procedures/src/stored/procedures/in/IncreaseSalariesForDepartment.java",
      "startPos": 2317
   },
   {
      "FM3": "Famix-Java-Entities.Parameter",
      "id": 85,
      "name": "firstName",
      "parentBehaviouralEntity": {
         "ref": 50
      }
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 86,
      "element": {
         "ref": 276
      },
      "endPos": 961,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Calling Stored Procedures/src/stored/procedures/in/IncreaseSalariesForDepartment.java",
      "startPos": 885
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 87,
      "element": {
         "ref": 260
      },
      "endPos": 638,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Calling Stored Procedures/src/stored/procedures/in/IncreaseSalariesForDepartment.java",
      "startPos": 610
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 88,
      "candidates": [
         {
            "ref": 147
         }
      ],
      "previous": {
         "ref": 331
      },
      "sender": {
         "ref": 329
      },
      "signature": "getProperty(\"dburl\")"
   },
   {
      "FM3": "Famix-Java-Entities.Attribute",
      "id": 89,
      "name": "DELETE_FROM_EMPLOYEES",
      "parentType": {
         "ref": 98
      }
   },
   {
      "FM3": "Famix-Java-Entities.LocalVariable",
      "id": 90,
      "name": "myStmt",
      "parentBehaviouralEntity": {
         "ref": 284
      }
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 91,
      "element": {
         "ref": 52
      },
      "endPos": 221,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Database Configuration/src/ConnectionDemo.java",
      "startPos": 173
   },
   {
      "FM3": "Famix-Java-Entities.Class",
      "id": 92,
      "name": "SQLException",
      "isStub": true,
      "typeContainer": {
         "ref": 50
      }
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 93,
      "element": {
         "ref": 301
      },
      "endPos": 460,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Database Configuration/src/ConnectionDemo.java",
      "startPos": 444
   },
   {
      "FM3": "Famix-Java-Entities.Attribute",
      "id": 94,
      "name": "SELECT_FROM_EMPLOYEES_WHERE_DEPARTMENT",
      "parentType": {
         "ref": 189
      }
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 95,
      "candidates": [
         {
            "ref": 81
         }
      ],
      "previous": {
         "ref": 59
      },
      "sender": {
         "ref": 50
      },
      "signature": "getString(\"last_name\")"
   },
   {
      "FM3": "Famix-Java-Entities.Class",
      "id": 96,
      "name": "SQLException",
      "isStub": true,
      "typeContainer": {
         "ref": 329
      }
   },
   {
      "FM3": "Famix-Java-Entities.Reference",
      "id": 97,
      "referencer": {
         "ref": 329
      },
      "referredType": {
         "ref": 35
      }
   },
   {
      "FM3": "Famix-Java-Entities.Class",
      "id": 98,
      "name": "JdbcDelete",
      "typeContainer": {
         "ref": 157
      },
      "visibility": "public"
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 99,
      "element": {
         "ref": 148
      },
      "endPos": 2092,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Calling Stored Procedures/src/stored/procedures/in/IncreaseSalariesForDepartment.java",
      "startPos": 2066
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 100,
      "element": {
         "ref": 3
      },
      "endPos": 1680,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Calling Stored Procedures/src/stored/procedures/in/IncreaseSalariesForDepartment.java",
      "startPos": 553
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 101,
      "element": {
         "ref": 17
      },
      "endPos": 1180,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Calling Stored Procedures/src/stored/procedures/in/IncreaseSalariesForDepartment.java",
      "startPos": 1143
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 102,
      "candidates": [
         {
            "ref": 71
         }
      ],
      "previous": {
         "ref": 273
      },
      "receiver": {
         "ref": 7
      },
      "sender": {
         "ref": 3
      },
      "signature": "showSalaries(myConn,theDepartment)"
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 103,
      "candidates": [
         {
            "ref": 234
         }
      ],
      "previous": {
         "ref": 102
      },
      "sender": {
         "ref": 3
      },
      "signature": "printStackTrace()"
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 104,
      "element": {
         "ref": 331
      },
      "endPos": 581,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Database Configuration/src/ConnectionDemo.java",
      "startPos": 553
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 105,
      "element": {
         "ref": 50
      },
      "endPos": 3030,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Basic JDBC Operations/src/JdbcDelete.java",
      "startPos": 1827
   },
   {
      "FM3": "Famix-Java-Entities.CaughtException",
      "id": 106,
      "definingEntity": {
         "ref": 329
      },
      "exceptionClass": {
         "ref": 96
      }
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 107,
      "element": {
         "ref": 62
      },
      "endPos": 517,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Database Configuration/src/ConnectionDemo.java",
      "startPos": 493
   },
   {
      "FM3": "Famix-Java-Entities.Method",
      "id": 108,
      "name": "format",
      "isStub": true,
      "parentType": {
         "ref": 228
      },
      "signature": "format(?,?,?,?)",
      "visibility": "package"
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 109,
      "element": {
         "ref": 166
      },
      "endPos": 965,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Database Configuration/src/ConnectionDemo.java",
      "startPos": 942
   },
   {
      "FM3": "Famix-Java-Entities.Method",
      "id": 110,
      "name": "<Initializer>",
      "cyclomaticComplexity": 0,
      "numberOfStatements": 0,
      "parentType": {
         "ref": 327
      },
      "signature": "<Initializer>()",
      "visibility": "package"
   },
   {
      "FM3": "Famix-Java-Entities.Inheritance",
      "id": 111,
      "subclass": {
         "ref": 327
      },
      "superclass": {
         "ref": 232
      }
   },
   {
      "FM3": "Famix-Java-Entities.LocalVariable",
      "id": 112,
      "name": "thePassword",
      "parentBehaviouralEntity": {
         "ref": 329
      }
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 113,
      "element": {
         "ref": 283
      },
      "endPos": 1444,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Database Configuration/src/ConnectionDemo.java",
      "startPos": 1426
   },
   {
      "FM3": "Famix-Java-Entities.Method",
      "id": 114,
      "name": "executeQuery",
      "isStub": true,
      "parentType": {
         "ref": 228
      },
      "signature": "executeQuery(?)",
      "visibility": "package"
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 115,
      "candidates": [
         {
            "ref": 272
         }
      ],
      "previous": {
         "ref": 306
      },
      "receiver": {
         "ref": 131
      },
      "sender": {
         "ref": 284
      },
      "signature": "displayEmployee(myConn,\"John\",\"Doe\")"
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 116,
      "candidates": [
         {
            "ref": 234
         }
      ],
      "previous": {
         "ref": 51
      },
      "sender": {
         "ref": 284
      },
      "signature": "printStackTrace()"
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 117,
      "element": {
         "ref": 179
      },
      "endPos": 414,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Database Configuration/src/ConnectionDemo.java",
      "startPos": 354
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 118,
      "candidates": [
         {
            "ref": 81
         }
      ],
      "previous": {
         "ref": 148
      },
      "sender": {
         "ref": 319
      },
      "signature": "getString(\"first_name\")"
   },
   {
      "FM3": "Famix-Java-Entities.Type",
      "id": 119,
      "name": "Statement",
      "isStub": true,
      "typeContainer": {
         "ref": 327
      }
   },
   {
      "FM3": "Famix-Java-Entities.Type",
      "id": 120,
      "name": "Connection",
      "isStub": true,
      "typeContainer": {
         "ref": 189
      }
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 121,
      "candidates": [
         {
            "ref": 81
         }
      ],
      "previous": {
         "ref": 66
      },
      "sender": {
         "ref": 50
      },
      "signature": "getString(\"email\")"
   },
   {
      "FM3": "Famix-Java-Entities.CaughtException",
      "id": 122,
      "definingEntity": {
         "ref": 50
      },
      "exceptionClass": {
         "ref": 76
      }
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 123,
      "element": {
         "ref": 88
      },
      "endPos": 640,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Database Configuration/src/ConnectionDemo.java",
      "startPos": 615
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 124,
      "element": {
         "ref": 98
      },
      "endPos": 3032,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Basic JDBC Operations/src/JdbcDelete.java",
      "startPos": 228
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 125,
      "candidates": [
         {
            "ref": 81
         }
      ],
      "previous": {
         "ref": 70
      },
      "sender": {
         "ref": 329
      },
      "signature": "getString(\"last_name\")"
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 126,
      "candidates": [
         {
            "ref": 180
         }
      ],
      "sender": {
         "ref": 319
      },
      "signature": "prepareStatement(SELECT_FROM_EMPLOYEES_WHERE_DEPARTMENT)"
   },
   {
      "FM3": "Famix-Java-Entities.CaughtException",
      "id": 127,
      "definingEntity": {
         "ref": 3
      },
      "exceptionClass": {
         "ref": 323
      }
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 128,
      "element": {
         "ref": 285
      },
      "endPos": 640,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Database Configuration/src/ConnectionDemo.java",
      "startPos": 604
   },
   {
      "FM3": "Famix-Java-Entities.Method",
      "id": 129,
      "name": "executeQuery",
      "isStub": true,
      "parentType": {
         "ref": 228
      },
      "signature": "executeQuery()",
      "visibility": "package"
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 130,
      "element": {
         "ref": 255
      },
      "endPos": 856,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Calling Stored Procedures/src/stored/procedures/in/IncreaseSalariesForDepartment.java",
      "startPos": 800
   },
   {
      "FM3": "Famix-Java-Entities.ImplicitVariable",
      "id": 131,
      "name": "self",
      "isStub": true,
      "parentBehaviouralEntity": {
         "ref": 284
      }
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 132,
      "element": {
         "ref": 75
      },
      "endPos": 908,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Database Configuration/src/ConnectionDemo.java",
      "startPos": 850
   },
   {
      "FM3": "Famix-Java-Entities.LocalVariable",
      "id": 133,
      "name": "myStmt",
      "parentBehaviouralEntity": {
         "ref": 329
      }
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 134,
      "element": {
         "ref": 263
      },
      "endPos": 414,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Database Configuration/src/ConnectionDemo.java",
      "startPos": 354
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 135,
      "candidates": [
         {
            "ref": 58
         }
      ],
      "previous": {
         "ref": 229
      },
      "sender": {
         "ref": 3
      },
      "signature": "println(\"Finished calling stored procedure\")"
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 136,
      "element": {
         "ref": 156
      },
      "endPos": 436,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Basic JDBC Operations/src/JdbcDelete.java",
      "startPos": 417
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 137,
      "candidates": [
         {
            "ref": 203
         }
      ],
      "sender": {
         "ref": 329
      },
      "signature": "Properties()"
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 138,
      "element": {
         "ref": 212
      },
      "endPos": 279,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Calling Stored Procedures/src/stored/procedures/in/IncreaseSalariesForDepartment.java",
      "startPos": 260
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 139,
      "candidates": [
         {
            "ref": 180
         }
      ],
      "sender": {
         "ref": 50
      },
      "signature": "prepareStatement(SELECT_LAST_FIRST_NAME_EMAIL_FROM_EMPLOYEES_WHERE)"
   },
   {
      "FM3": "Famix-Java-Entities.LocalVariable",
      "id": 140,
      "name": "e",
      "parentBehaviouralEntity": {
         "ref": 50
      }
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 141,
      "element": {
         "ref": 314
      },
      "endPos": 2573,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Calling Stored Procedures/src/stored/procedures/in/IncreaseSalariesForDepartment.java",
      "startPos": 2555
   },
   {
      "FM3": "Famix-Java-Entities.Parameter",
      "id": 142,
      "name": "myConn",
      "parentBehaviouralEntity": {
         "ref": 50
      }
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 143,
      "element": {
         "ref": 192
      },
      "endPos": 2250,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Basic JDBC Operations/src/JdbcDelete.java",
      "startPos": 2230
   },
   {
      "FM3": "Famix-Java-Entities.LocalVariable",
      "id": 144,
      "name": "myConn",
      "parentBehaviouralEntity": {
         "ref": 3
      }
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 145,
      "element": {
         "ref": 11
      },
      "endPos": 1984,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Calling Stored Procedures/src/stored/procedures/in/IncreaseSalariesForDepartment.java",
      "startPos": 1964
   },
   {
      "FM3": "Famix-Java-Entities.Method",
      "id": 146,
      "name": "setDouble",
      "isStub": true,
      "parentType": {
         "ref": 228
      },
      "signature": "setDouble(?,?)",
      "visibility": "package"
   },
   {
      "FM3": "Famix-Java-Entities.Method",
      "id": 147,
      "name": "getProperty",
      "isStub": true,
      "parentType": {
         "ref": 228
      },
      "signature": "getProperty(?)",
      "visibility": "package"
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 148,
      "candidates": [
         {
            "ref": 81
         }
      ],
      "previous": {
         "ref": 304
      },
      "sender": {
         "ref": 319
      },
      "signature": "getString(\"last_name\")"
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 149,
      "element": {
         "ref": 116
      },
      "endPos": 1803,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Basic JDBC Operations/src/JdbcDelete.java",
      "startPos": 1785
   },
   {
      "FM3": "Famix-Java-Entities.Type",
      "id": 150,
      "name": "PreparedStatement",
      "isStub": true,
      "typeContainer": {
         "ref": 189
      }
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 151,
      "element": {
         "ref": 172
      },
      "endPos": 265,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Database Configuration/src/ConnectionDemo.java",
      "startPos": 253
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 152,
      "element": {
         "ref": 303
      },
      "endPos": 2250,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Basic JDBC Operations/src/JdbcDelete.java",
      "startPos": 2223
   },
   {
      "FM3": "Famix-Java-Entities.LocalVariable",
      "id": 153,
      "name": "myStmt",
      "parentBehaviouralEntity": {
         "ref": 319
      }
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 154,
      "element": {
         "ref": 288
      },
      "endPos": 2092,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Calling Stored Procedures/src/stored/procedures/in/IncreaseSalariesForDepartment.java",
      "startPos": 2055
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 155,
      "element": {
         "ref": 165
      },
      "endPos": 887,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Basic JDBC Operations/src/JdbcDelete.java",
      "startPos": 825
   },
   {
      "FM3": "Famix-Java-Entities.Attribute",
      "id": 156,
      "name": "PASSWORD",
      "parentType": {
         "ref": 98
      }
   },
   {
      "FM3": "Famix-Java-Entities.Package",
      "id": 157,
      "name": "<Default Package>"
   },
   {
      "FM3": "Famix-Java-Entities.LocalVariable",
      "id": 158,
      "name": "myRs",
      "parentBehaviouralEntity": {
         "ref": 329
      }
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 159,
      "element": {
         "ref": 194
      },
      "endPos": 413,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Calling Stored Procedures/src/stored/procedures/in/IncreaseSalariesForDepartment.java",
      "startPos": 315
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 160,
      "element": {
         "ref": 90
      },
      "endPos": 940,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Basic JDBC Operations/src/JdbcDelete.java",
      "startPos": 908
   },
   {
      "FM3": "Famix-Java-Entities.Package",
      "id": 161,
      "name": "java",
      "isStub": true
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 162,
      "candidates": [
         {
            "ref": 58
         }
      ],
      "previous": {
         "ref": 166
      },
      "sender": {
         "ref": 329
      },
      "signature": "println(\"\\nConnection successful!\\n\")"
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 163,
      "element": {
         "ref": 54
      },
      "endPos": 940,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Basic JDBC Operations/src/JdbcDelete.java",
      "startPos": 917
   },
   {
      "FM3": "Famix-Java-Entities.CaughtException",
      "id": 164,
      "definingEntity": {
         "ref": 319
      },
      "exceptionClass": {
         "ref": 216
      }
   },
   {
      "FM3": "Famix-Java-Entities.LocalVariable",
      "id": 165,
      "name": "myConn",
      "parentBehaviouralEntity": {
         "ref": 284
      }
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 166,
      "candidates": [
         {
            "ref": 201
         }
      ],
      "previous": {
         "ref": 75
      },
      "sender": {
         "ref": 329
      },
      "signature": "createStatement()"
   },
   {
      "FM3": "Famix-Java-Entities.Method",
      "id": 167,
      "name": "setString",
      "isStub": true,
      "parentType": {
         "ref": 228
      },
      "signature": "setString(?,?)",
      "visibility": "package"
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 168,
      "candidates": [
         {
            "ref": 167
         }
      ],
      "previous": {
         "ref": 139
      },
      "sender": {
         "ref": 50
      },
      "signature": "setString(1,lastName)"
   },
   {
      "FM3": "Famix-Java-Entities.Type",
      "id": 169,
      "name": "Properties",
      "isStub": true,
      "typeContainer": {
         "ref": 327
      }
   },
   {
      "FM3": "Famix-Java-Entities.CaughtException",
      "id": 170,
      "definingEntity": {
         "ref": 329
      },
      "exceptionClass": {
         "ref": 318
      }
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 171,
      "element": {
         "ref": 223
      },
      "endPos": 332,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Basic JDBC Operations/src/JdbcDelete.java",
      "startPos": 287
   },
   {
      "FM3": "Famix-Java-Entities.Parameter",
      "id": 172,
      "name": "args",
      "parentBehaviouralEntity": {
         "ref": 329
      }
   },
   {
      "FM3": "Famix-Java-Entities.Type",
      "id": 173,
      "name": "Connection",
      "isStub": true,
      "typeContainer": {
         "ref": 327
      }
   },
   {
      "FM3": "Famix-Java-Entities.Method",
      "id": 174,
      "name": "load",
      "isStub": true,
      "parentType": {
         "ref": 228
      },
      "signature": "load(?)",
      "visibility": "package"
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 175,
      "element": {
         "ref": 43
      },
      "endPos": 2931,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Basic JDBC Operations/src/JdbcDelete.java",
      "startPos": 2913
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 176,
      "element": {
         "ref": 257
      },
      "endPos": 2161,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Calling Stored Procedures/src/stored/procedures/in/IncreaseSalariesForDepartment.java",
      "startPos": 2122
   },
   {
      "FM3": "Famix-Java-Entities.Type",
      "id": 177,
      "name": "String",
      "isStub": true,
      "typeContainer": {
         "ref": 327
      }
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 178,
      "element": {
         "ref": 284
      },
      "endPos": 1820,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Basic JDBC Operations/src/JdbcDelete.java",
      "startPos": 765
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 179,
      "candidates": [
         {
            "ref": 45
         }
      ],
      "previous": {
         "ref": 137
      },
      "sender": {
         "ref": 329
      },
      "signature": "FileInputStream(\"Database Configuration/demo.properties\")"
   },
   {
      "FM3": "Famix-Java-Entities.Method",
      "id": 180,
      "name": "prepareStatement",
      "isStub": true,
      "parentType": {
         "ref": 228
      },
      "signature": "prepareStatement(?)",
      "visibility": "package"
   },
   {
      "FM3": "Famix-Java-Entities.Method",
      "id": 181,
      "name": "printf",
      "isStub": true,
      "parentType": {
         "ref": 228
      },
      "signature": "printf(?,?,?,?,?)",
      "visibility": "package"
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 182,
      "candidates": [
         {
            "ref": 58
         }
      ],
      "previous": {
         "ref": 5
      },
      "sender": {
         "ref": 284
      },
      "signature": "println(\"AFTER THE DELETE...\" + \"\\nRows affected = \" + rowsAffected)"
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 183,
      "element": {
         "ref": 329
      },
      "endPos": 1636,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Database Configuration/src/ConnectionDemo.java",
      "startPos": 229
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 184,
      "element": {
         "ref": 78
      },
      "endPos": 887,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Basic JDBC Operations/src/JdbcDelete.java",
      "startPos": 834
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 185,
      "element": {
         "ref": 133
      },
      "endPos": 965,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Database Configuration/src/ConnectionDemo.java",
      "startPos": 933
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 186,
      "element": {
         "ref": 137
      },
      "endPos": 319,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Database Configuration/src/ConnectionDemo.java",
      "startPos": 304
   },
   {
      "FM3": "Famix-Java-Entities.Method",
      "id": 187,
      "name": "getConnection",
      "isStub": true,
      "parentType": {
         "ref": 228
      },
      "signature": "getConnection(?,?,?)",
      "visibility": "package"
   },
   {
      "FM3": "Famix-Java-Entities.Package",
      "id": 188,
      "name": "procedures",
      "parentPackage": {
         "ref": 227
      }
   },
   {
      "FM3": "Famix-Java-Entities.Class",
      "id": 189,
      "name": "IncreaseSalariesForDepartment",
      "typeContainer": {
         "ref": 210
      },
      "visibility": "public"
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 190,
      "element": {
         "ref": 229
      },
      "endPos": 1419,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Calling Stored Procedures/src/stored/procedures/in/IncreaseSalariesForDepartment.java",
      "startPos": 1404
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 191,
      "element": {
         "ref": 89
      },
      "endPos": 757,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Basic JDBC Operations/src/JdbcDelete.java",
      "startPos": 655
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 192,
      "candidates": [
         {
            "ref": 129
         }
      ],
      "previous": {
         "ref": 226
      },
      "sender": {
         "ref": 50
      },
      "signature": "executeQuery()"
   },
   {
      "FM3": "Famix-Java-Entities.Parameter",
      "id": 193,
      "name": "lastName",
      "parentBehaviouralEntity": {
         "ref": 50
      }
   },
   {
      "FM3": "Famix-Java-Entities.Attribute",
      "id": 194,
      "name": "CALL_INCREASE_SALARIES_FOR_DEPARTMENT",
      "parentType": {
         "ref": 189
      }
   },
   {
      "FM3": "Famix-Java-Entities.LocalVariable",
      "id": 195,
      "name": "myConn",
      "parentBehaviouralEntity": {
         "ref": 329
      }
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 196,
      "candidates": [
         {
            "ref": 58
         }
      ],
      "previous": {
         "ref": 208
      },
      "sender": {
         "ref": 3
      },
      "signature": "println(\"Salaries BEFORE\\n\")"
   },
   {
      "FM3": "Famix-Java-Entities.LocalVariable",
      "id": 197,
      "name": "myRs",
      "parentBehaviouralEntity": {
         "ref": 319
      }
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 198,
      "candidates": [
         {
            "ref": 234
         }
      ],
      "previous": {
         "ref": 267
      },
      "sender": {
         "ref": 319
      },
      "signature": "printStackTrace()"
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 199,
      "element": {
         "ref": 335
      },
      "endPos": 589,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Calling Stored Procedures/src/stored/procedures/in/IncreaseSalariesForDepartment.java",
      "startPos": 577
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 200,
      "element": {
         "ref": 250
      },
      "endPos": 2836,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Basic JDBC Operations/src/JdbcDelete.java",
      "startPos": 2766
   },
   {
      "FM3": "Famix-Java-Entities.Method",
      "id": 201,
      "name": "createStatement",
      "isStub": true,
      "parentType": {
         "ref": 228
      },
      "signature": "createStatement()",
      "visibility": "package"
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 202,
      "candidates": [
         {
            "ref": 58
         }
      ],
      "previous": {
         "ref": 115
      },
      "sender": {
         "ref": 284
      },
      "signature": "println(\"\\nDELETING THE EMPLOYEE: John Doe\\n\")"
   },
   {
      "FM3": "Famix-Java-Entities.Method",
      "id": 203,
      "name": "Properties",
      "isStub": true,
      "kind": "constructor",
      "parentType": {
         "ref": 67
      },
      "signature": "Properties()",
      "visibility": "package"
   },
   {
      "FM3": "Famix-Java-Entities.CaughtException",
      "id": 204,
      "definingEntity": {
         "ref": 319
      },
      "exceptionClass": {
         "ref": 264
      }
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 205,
      "candidates": [
         {
            "ref": 58
         }
      ],
      "previous": {
         "ref": 279
      },
      "sender": {
         "ref": 329
      },
      "signature": "println(\"User: \" + theUser)"
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 206,
      "element": {
         "ref": 287
      },
      "endPos": 2538,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Calling Stored Procedures/src/stored/procedures/in/IncreaseSalariesForDepartment.java",
      "startPos": 2525
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 207,
      "element": {
         "ref": 293
      },
      "endPos": 225,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Calling Stored Procedures/src/stored/procedures/in/IncreaseSalariesForDepartment.java",
      "startPos": 210
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 208,
      "candidates": [
         {
            "ref": 245
         }
      ],
      "previous": {
         "ref": 255
      },
      "sender": {
         "ref": 3
      },
      "signature": "prepareCall(\"{call increase_salaries_for_department(?, ?)}\")"
   },
   {
      "FM3": "Famix-Java-Entities.PrimitiveType",
      "id": 209,
      "name": "double",
      "isStub": true
   },
   {
      "FM3": "Famix-Java-Entities.Package",
      "id": 210,
      "name": "in",
      "parentPackage": {
         "ref": 188
      }
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 211,
      "element": {
         "ref": 182
      },
      "endPos": 1682,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Basic JDBC Operations/src/JdbcDelete.java",
      "startPos": 1604
   },
   {
      "FM3": "Famix-Java-Entities.Attribute",
      "id": 212,
      "name": "PASSWORD",
      "parentType": {
         "ref": 189
      }
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 213,
      "element": {
         "ref": 14
      },
      "endPos": 621,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Basic JDBC Operations/src/JdbcDelete.java",
      "startPos": 471
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 214,
      "element": {
         "ref": 332
      },
      "endPos": 1538,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Database Configuration/src/ConnectionDemo.java",
      "startPos": 1520
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 215,
      "element": {
         "ref": 189
      },
      "endPos": 2592,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Calling Stored Procedures/src/stored/procedures/in/IncreaseSalariesForDepartment.java",
      "startPos": 52
   },
   {
      "FM3": "Famix-Java-Entities.Class",
      "id": 216,
      "name": "SQLException",
      "isStub": true,
      "typeContainer": {
         "ref": 319
      }
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 217,
      "element": {
         "ref": 297
      },
      "endPos": 2511,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Basic JDBC Operations/src/JdbcDelete.java",
      "startPos": 2469
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 218,
      "candidates": [
         {
            "ref": 114
         }
      ],
      "previous": {
         "ref": 162
      },
      "sender": {
         "ref": 329
      },
      "signature": "executeQuery(SELECT_FROM_EMPLOYEES)"
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 219,
      "element": {
         "ref": 144
      },
      "endPos": 762,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Calling Stored Procedures/src/stored/procedures/in/IncreaseSalariesForDepartment.java",
      "startPos": 700
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 220,
      "element": {
         "ref": 218
      },
      "endPos": 1129,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Database Configuration/src/ConnectionDemo.java",
      "startPos": 1088
   },
   {
      "FM3": "Famix-Java-Entities.Class",
      "id": 221,
      "name": "FileInputStream",
      "isStub": true,
      "typeContainer": {
         "ref": 329
      }
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 222,
      "element": {
         "ref": 319
      },
      "endPos": 2590,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Calling Stored Procedures/src/stored/procedures/in/IncreaseSalariesForDepartment.java",
      "startPos": 1687
   },
   {
      "FM3": "Famix-Java-Entities.Attribute",
      "id": 223,
      "name": "MYSQL_URL",
      "parentType": {
         "ref": 98
      }
   },
   {
      "FM3": "Famix-Java-Entities.CaughtException",
      "id": 224,
      "definingEntity": {
         "ref": 284
      },
      "exceptionClass": {
         "ref": 73
      }
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 225,
      "candidates": [
         {
            "ref": 167
         }
      ],
      "previous": {
         "ref": 126
      },
      "sender": {
         "ref": 319
      },
      "signature": "setString(1,theDepartment)"
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 226,
      "candidates": [
         {
            "ref": 167
         }
      ],
      "previous": {
         "ref": 168
      },
      "sender": {
         "ref": 50
      },
      "signature": "setString(2,firstName)"
   },
   {
      "FM3": "Famix-Java-Entities.Package",
      "id": 227,
      "name": "stored"
   },
   {
      "FM3": "Famix-Java-Entities.Class",
      "id": 228,
      "name": "<StubMethodContainer>",
      "isStub": true,
      "typeContainer": {
         "ref": 157
      }
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 229,
      "candidates": [
         {
            "ref": 37
         }
      ],
      "previous": {
         "ref": 291
      },
      "sender": {
         "ref": 3
      },
      "signature": "execute()"
   },
   {
      "FM3": "Famix-Java-Entities.Type",
      "id": 230,
      "name": "ResultSet",
      "isStub": true,
      "typeContainer": {
         "ref": 327
      }
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 231,
      "element": {
         "ref": 85
      },
      "endPos": 1897,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Basic JDBC Operations/src/JdbcDelete.java",
      "startPos": 1882
   },
   {
      "FM3": "Famix-Java-Entities.Class",
      "id": 232,
      "name": "Object",
      "isStub": true,
      "typeContainer": {
         "ref": 312
      }
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 233,
      "element": {
         "ref": 195
      },
      "endPos": 908,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Database Configuration/src/ConnectionDemo.java",
      "startPos": 841
   },
   {
      "FM3": "Famix-Java-Entities.Method",
      "id": 234,
      "name": "printStackTrace",
      "isStub": true,
      "parentType": {
         "ref": 228
      },
      "signature": "printStackTrace()",
      "visibility": "package"
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 235,
      "element": {
         "ref": 25
      },
      "endPos": 319,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Database Configuration/src/ConnectionDemo.java",
      "startPos": 296
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 236,
      "element": {
         "ref": 315
      },
      "endPos": 1192,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Database Configuration/src/ConnectionDemo.java",
      "startPos": 1182
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 237,
      "element": {
         "ref": 18
      },
      "endPos": 2571,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Basic JDBC Operations/src/JdbcDelete.java",
      "startPos": 2541
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 238,
      "candidates": [
         {
            "ref": 234
         }
      ],
      "previous": {
         "ref": 332
      },
      "sender": {
         "ref": 329
      },
      "signature": "printStackTrace()"
   },
   {
      "FM3": "Famix-Java-Entities.LocalVariable",
      "id": 239,
      "name": "department",
      "parentBehaviouralEntity": {
         "ref": 319
      }
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 240,
      "element": {
         "ref": 162
      },
      "endPos": 1051,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Database Configuration/src/ConnectionDemo.java",
      "startPos": 1004
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 241,
      "endPos": 2892,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Basic JDBC Operations/src/JdbcDelete.java",
      "startPos": 2879
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 242,
      "element": {
         "ref": 290
      },
      "endPos": 1079,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Calling Stored Procedures/src/stored/procedures/in/IncreaseSalariesForDepartment.java",
      "startPos": 1045
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 243,
      "endPos": 1401,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Database Configuration/src/ConnectionDemo.java",
      "startPos": 1388
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 244,
      "element": {
         "ref": 97
      },
      "endPos": 319,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Database Configuration/src/ConnectionDemo.java",
      "startPos": 304
   },
   {
      "FM3": "Famix-Java-Entities.Method",
      "id": 245,
      "name": "prepareCall",
      "isStub": true,
      "parentType": {
         "ref": 228
      },
      "signature": "prepareCall(?)",
      "visibility": "package"
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 246,
      "element": {
         "ref": 310
      },
      "endPos": 856,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Calling Stored Procedures/src/stored/procedures/in/IncreaseSalariesForDepartment.java",
      "startPos": 791
   },
   {
      "FM3": "Famix-Java-Entities.Class",
      "id": 247,
      "name": "FileInputStream",
      "isStub": true,
      "typeContainer": {
         "ref": 329
      }
   },
   {
      "FM3": "Famix-Java-Entities.Attribute",
      "id": 248,
      "name": "MYSQL_URL",
      "parentType": {
         "ref": 189
      }
   },
   {
      "FM3": "Famix-Java-Entities.Method",
      "id": 249,
      "name": "next",
      "isStub": true,
      "parentType": {
         "ref": 228
      },
      "signature": "next()",
      "visibility": "package"
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 250,
      "candidates": [
         {
            "ref": 58
         }
      ],
      "previous": {
         "ref": 57
      },
      "sender": {
         "ref": 50
      },
      "signature": "println(\"Employee NOT FOUND: \" + firstName + \" \"+ lastName)"
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 251,
      "element": {
         "ref": 196
      },
      "endPos": 1030,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Calling Stored Procedures/src/stored/procedures/in/IncreaseSalariesForDepartment.java",
      "startPos": 992
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 252,
      "element": {
         "ref": 65
      },
      "endPos": 1128,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Calling Stored Procedures/src/stored/procedures/in/IncreaseSalariesForDepartment.java",
      "startPos": 1095
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 253,
      "element": {
         "ref": 208
      },
      "endPos": 961,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Calling Stored Procedures/src/stored/procedures/in/IncreaseSalariesForDepartment.java",
      "startPos": 895
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 254,
      "endPos": 2452,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Calling Stored Procedures/src/stored/procedures/in/IncreaseSalariesForDepartment.java",
      "startPos": 2439
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 255,
      "candidates": [
         {
            "ref": 245
         }
      ],
      "previous": {
         "ref": 9
      },
      "sender": {
         "ref": 3
      },
      "signature": "prepareCall(CALL_INCREASE_SALARIES_FOR_DEPARTMENT)"
   },
   {
      "FM3": "Famix-Java-Entities.LocalVariable",
      "id": 256,
      "name": "myStmt",
      "parentBehaviouralEntity": {
         "ref": 50
      }
   },
   {
      "FM3": "Famix-Java-Entities.LocalVariable",
      "id": 257,
      "name": "firstName",
      "parentBehaviouralEntity": {
         "ref": 319
      }
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 258,
      "element": {
         "ref": 102
      },
      "endPos": 1594,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Calling Stored Procedures/src/stored/procedures/in/IncreaseSalariesForDepartment.java",
      "startPos": 1560
   },
   {
      "FM3": "Famix-Java-Entities.Type",
      "id": 259,
      "name": "Connection",
      "isStub": true,
      "typeContainer": {
         "ref": 98
      }
   },
   {
      "FM3": "Famix-Java-Entities.LocalVariable",
      "id": 260,
      "name": "theDepartment",
      "parentBehaviouralEntity": {
         "ref": 3
      }
   },
   {
      "FM3": "Famix-Java-Entities.Type",
      "id": 261,
      "name": "String",
      "isStub": true,
      "typeContainer": {
         "ref": 189
      }
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 262,
      "element": {
         "ref": 304
      },
      "endPos": 2023,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Calling Stored Procedures/src/stored/procedures/in/IncreaseSalariesForDepartment.java",
      "startPos": 2013
   },
   {
      "FM3": "Famix-Java-Entities.Reference",
      "id": 263,
      "previous": {
         "ref": 97
      },
      "referencer": {
         "ref": 329
      },
      "referredType": {
         "ref": 247
      }
   },
   {
      "FM3": "Famix-Java-Entities.Class",
      "id": 264,
      "name": "SQLException",
      "isStub": true,
      "typeContainer": {
         "ref": 319
      }
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 265,
      "element": {
         "ref": 334
      },
      "endPos": 517,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Database Configuration/src/ConnectionDemo.java",
      "startPos": 483
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 266,
      "element": {
         "ref": 316
      },
      "endPos": 702,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Database Configuration/src/ConnectionDemo.java",
      "startPos": 656
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 267,
      "candidates": [
         {
            "ref": 181
         }
      ],
      "previous": {
         "ref": 281
      },
      "sender": {
         "ref": 319
      },
      "signature": "printf(\"%s, %s, %s, %.2f\\n\",lastName,firstName,department,salary)"
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 268,
      "element": {
         "ref": 168
      },
      "endPos": 2115,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Basic JDBC Operations/src/JdbcDelete.java",
      "startPos": 2087
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 269,
      "element": {
         "ref": 95
      },
      "endPos": 2439,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Basic JDBC Operations/src/JdbcDelete.java",
      "startPos": 2413
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 270,
      "element": {
         "ref": 126
      },
      "endPos": 1862,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Calling Stored Procedures/src/stored/procedures/in/IncreaseSalariesForDepartment.java",
      "startPos": 1800
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 271,
      "element": {
         "ref": 56
      },
      "endPos": 801,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Basic JDBC Operations/src/JdbcDelete.java",
      "startPos": 789
   },
   {
      "FM3": "Famix-Java-Entities.Method",
      "id": 272,
      "name": "displayEmployee",
      "isStub": true,
      "parentType": {
         "ref": 228
      },
      "signature": "displayEmployee(?,?,?)",
      "visibility": "package"
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 273,
      "candidates": [
         {
            "ref": 58
         }
      ],
      "previous": {
         "ref": 135
      },
      "sender": {
         "ref": 3
      },
      "signature": "println(\"\\n\\nSalaries AFTER\\n\")"
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 274,
      "element": {
         "ref": 239
      },
      "endPos": 2293,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Calling Stored Procedures/src/stored/procedures/in/IncreaseSalariesForDepartment.java",
      "startPos": 2253
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 275,
      "element": {
         "ref": 205
      },
      "endPos": 815,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Database Configuration/src/ConnectionDemo.java",
      "startPos": 778
   },
   {
      "FM3": "Famix-Java-Entities.LocalVariable",
      "id": 276,
      "name": "myStmt2",
      "parentBehaviouralEntity": {
         "ref": 3
      }
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 277,
      "element": {
         "ref": 83
      },
      "endPos": 1758,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Calling Stored Procedures/src/stored/procedures/in/IncreaseSalariesForDepartment.java",
      "startPos": 1739
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 278,
      "element": {
         "ref": 125
      },
      "endPos": 1266,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Database Configuration/src/ConnectionDemo.java",
      "startPos": 1240
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 279,
      "candidates": [
         {
            "ref": 58
         }
      ],
      "previous": {
         "ref": 316
      },
      "sender": {
         "ref": 329
      },
      "signature": "println(\"Database URL: \" + theDBurl)"
   },
   {
      "FM3": "Famix-Java-Entities.PrimitiveType",
      "id": 280,
      "name": "boolean",
      "isStub": true
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 281,
      "candidates": [
         {
            "ref": 81
         }
      ],
      "previous": {
         "ref": 307
      },
      "sender": {
         "ref": 319
      },
      "signature": "getString(\"department\")"
   },
   {
      "FM3": "Famix-Java-Entities.Type",
      "id": 282,
      "name": "Str7ing",
      "isStub": true,
      "typeContainer": {
         "ref": 327
      }
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 283,
      "candidates": [
         {
            "ref": 234
         }
      ],
      "previous": {
         "ref": 79
      },
      "sender": {
         "ref": 329
      },
      "signature": "printStackTrace()"
   },
   {
      "FM3": "Famix-Java-Entities.Method",
      "id": 284,
      "name": "main",
      "cyclomaticComplexity": 3,
      "declaredType": {
         "ref": 295
      },
      "isClassSide": true,
      "numberOfStatements": 12,
      "parentType": {
         "ref": 98
      },
      "signature": "main()",
      "visibility": "public"
   },
   {
      "FM3": "Famix-Java-Entities.LocalVariable",
      "id": 285,
      "name": "theDBurl",
      "parentBehaviouralEntity": {
         "ref": 329
      }
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 286,
      "element": {
         "ref": 59
      },
      "endPos": 2367,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Basic JDBC Operations/src/JdbcDelete.java",
      "startPos": 2357
   },
   {
      "FM3": "Famix-Java-Entities.LocalVariable",
      "id": 287,
      "name": "e",
      "parentBehaviouralEntity": {
         "ref": 319
      }
   },
   {
      "FM3": "Famix-Java-Entities.LocalVariable",
      "id": 288,
      "name": "lastName",
      "parentBehaviouralEntity": {
         "ref": 319
      }
   },
   {
      "FM3": "Famix-Java-Entities.PrimitiveType",
      "id": 289,
      "name": "int",
      "isStub": true
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 290,
      "candidates": [
         {
            "ref": 71
         }
      ],
      "previous": {
         "ref": 196
      },
      "receiver": {
         "ref": 7
      },
      "sender": {
         "ref": 3
      },
      "signature": "showSalaries(myConn,theDepartment)"
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 291,
      "candidates": [
         {
            "ref": 58
         }
      ],
      "previous": {
         "ref": 17
      },
      "sender": {
         "ref": 3
      },
      "signature": "println(\"\\n\\nCalling stored procedure.  increase_salaries_for_department(''\" + theDepartment + \"'', \"+ theIncreaseAmount+ \")\")"
   },
   {
      "FM3": "Famix-Java-Entities.SourceLanguage",
      "id": 292
   },
   {
      "FM3": "Famix-Java-Entities.Attribute",
      "id": 293,
      "name": "USER",
      "parentType": {
         "ref": 189
      }
   },
   {
      "FM3": "Famix-Java-Entities.LocalVariable",
      "id": 294,
      "name": "input",
      "parentBehaviouralEntity": {
         "ref": 329
      }
   },
   {
      "FM3": "Famix-Java-Entities.PrimitiveType",
      "id": 295,
      "name": "void",
      "isStub": true
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 296,
      "element": {
         "ref": 103
      },
      "endPos": 1663,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Calling Stored Procedures/src/stored/procedures/in/IncreaseSalariesForDepartment.java",
      "startPos": 1645
   },
   {
      "FM3": "Famix-Java-Entities.LocalVariable",
      "id": 297,
      "name": "theFirstName",
      "parentBehaviouralEntity": {
         "ref": 50
      }
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 298,
      "element": {
         "ref": 121
      },
      "endPos": 2571,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Basic JDBC Operations/src/JdbcDelete.java",
      "startPos": 2549
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 299,
      "element": {
         "ref": 307
      },
      "endPos": 2223,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Calling Stored Procedures/src/stored/procedures/in/IncreaseSalariesForDepartment.java",
      "startPos": 2200
   },
   {
      "FM3": "Famix-Java-Entities.Parameter",
      "id": 300,
      "name": "myConn",
      "parentBehaviouralEntity": {
         "ref": 319
      }
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 301,
      "candidates": [
         {
            "ref": 174
         }
      ],
      "previous": {
         "ref": 179
      },
      "sender": {
         "ref": 329
      },
      "signature": "load(input)"
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 302,
      "element": {
         "ref": 118
      },
      "endPos": 2161,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Calling Stored Procedures/src/stored/procedures/in/IncreaseSalariesForDepartment.java",
      "startPos": 2134
   },
   {
      "FM3": "Famix-Java-Entities.LocalVariable",
      "id": 303,
      "name": "myRs",
      "parentBehaviouralEntity": {
         "ref": 50
      }
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 304,
      "candidates": [
         {
            "ref": 249
         }
      ],
      "previous": {
         "ref": 11
      },
      "sender": {
         "ref": 319
      },
      "signature": "next()"
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 305,
      "element": {
         "ref": 256
      },
      "endPos": 2057,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Basic JDBC Operations/src/JdbcDelete.java",
      "startPos": 1975
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 306,
      "candidates": [
         {
            "ref": 58
         }
      ],
      "previous": {
         "ref": 42
      },
      "sender": {
         "ref": 284
      },
      "signature": "println(\"BEFORE THE DELETE...\")"
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 307,
      "candidates": [
         {
            "ref": 313
         }
      ],
      "previous": {
         "ref": 118
      },
      "sender": {
         "ref": 319
      },
      "signature": "getDouble(\"salary\")"
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 308,
      "element": {
         "ref": 322
      },
      "endPos": 1584,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Database Configuration/src/ConnectionDemo.java",
      "startPos": 1572
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 309,
      "element": {
         "ref": 94
      },
      "endPos": 545,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Calling Stored Procedures/src/stored/procedures/in/IncreaseSalariesForDepartment.java",
      "startPos": 449
   },
   {
      "FM3": "Famix-Java-Entities.LocalVariable",
      "id": 310,
      "name": "myStmt",
      "parentBehaviouralEntity": {
         "ref": 3
      }
   },
   {
      "FM3": "Famix-Java-Entities.Attribute",
      "id": 311,
      "name": "USER",
      "parentType": {
         "ref": 98
      }
   },
   {
      "FM3": "Famix-Java-Entities.Package",
      "id": 312,
      "name": "lang",
      "isStub": true,
      "parentPackage": {
         "ref": 161
      }
   },
   {
      "FM3": "Famix-Java-Entities.Method",
      "id": 313,
      "name": "getDouble",
      "isStub": true,
      "parentType": {
         "ref": 228
      },
      "signature": "getDouble(?)",
      "visibility": "package"
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 314,
      "candidates": [
         {
            "ref": 234
         }
      ],
      "previous": {
         "ref": 198
      },
      "sender": {
         "ref": 319
      },
      "signature": "printStackTrace()"
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 315,
      "candidates": [
         {
            "ref": 249
         }
      ],
      "previous": {
         "ref": 218
      },
      "sender": {
         "ref": 329
      },
      "signature": "next()"
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 316,
      "candidates": [
         {
            "ref": 58
         }
      ],
      "previous": {
         "ref": 88
      },
      "sender": {
         "ref": 329
      },
      "signature": "println(\"Connecting to database...\")"
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 317,
      "element": {
         "ref": 327
      },
      "endPos": 1638,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Database Configuration/src/ConnectionDemo.java",
      "startPos": 110
   },
   {
      "FM3": "Famix-Java-Entities.Class",
      "id": 318,
      "name": "IOException",
      "isStub": true,
      "typeContainer": {
         "ref": 329
      }
   },
   {
      "FM3": "Famix-Java-Entities.Method",
      "id": 319,
      "name": "showSalaries",
      "cyclomaticComplexity": 6,
      "declaredType": {
         "ref": 295
      },
      "isClassSide": true,
      "numberOfStatements": 12,
      "parentType": {
         "ref": 189
      },
      "signature": "showSalaries()",
      "visibility": "private"
   },
   {
      "FM3": "Famix-Java-Entities.Method",
      "id": 320,
      "name": "<Initializer>",
      "cyclomaticComplexity": 0,
      "numberOfStatements": 0,
      "parentType": {
         "ref": 98
      },
      "signature": "<Initializer>()",
      "visibility": "package"
   },
   {
      "FM3": "Famix-Java-Entities.Type",
      "id": 321,
      "name": "ResultSet",
      "isStub": true,
      "typeContainer": {
         "ref": 98
      }
   },
   {
      "FM3": "Famix-Java-Entities.LocalVariable",
      "id": 322,
      "name": "e",
      "parentBehaviouralEntity": {
         "ref": 329
      }
   },
   {
      "FM3": "Famix-Java-Entities.Class",
      "id": 323,
      "name": "SQLException",
      "isStub": true,
      "typeContainer": {
         "ref": 3
      }
   },
   {
      "FM3": "Famix-Java-Entities.Type",
      "id": 324,
      "name": "Statement",
      "isStub": true,
      "typeContainer": {
         "ref": 98
      }
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 325,
      "element": {
         "ref": 66
      },
      "endPos": 2511,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Basic JDBC Operations/src/JdbcDelete.java",
      "startPos": 2484
   },
   {
      "FM3": "Famix-Java-Entities.Method",
      "id": 326,
      "name": "executeUpdate",
      "isStub": true,
      "parentType": {
         "ref": 228
      },
      "signature": "executeUpdate(?)",
      "visibility": "package"
   },
   {
      "FM3": "Famix-Java-Entities.Class",
      "id": 327,
      "name": "ConnectionDemo",
      "typeContainer": {
         "ref": 157
      },
      "visibility": "public"
   },
   {
      "FM3": "Famix-Java-Entities.Type",
      "id": 328,
      "name": "ResultSet",
      "isStub": true,
      "typeContainer": {
         "ref": 189
      }
   },
   {
      "FM3": "Famix-Java-Entities.Method",
      "id": 329,
      "name": "main",
      "cyclomaticComplexity": 8,
      "declaredType": {
         "ref": 295
      },
      "isClassSide": true,
      "numberOfStatements": 21,
      "parentType": {
         "ref": 327
      },
      "signature": "main()",
      "visibility": "public"
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 330,
      "element": {
         "ref": 9
      },
      "endPos": 762,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Calling Stored Procedures/src/stored/procedures/in/IncreaseSalariesForDepartment.java",
      "startPos": 709
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 331,
      "candidates": [
         {
            "ref": 147
         }
      ],
      "previous": {
         "ref": 62
      },
      "sender": {
         "ref": 329
      },
      "signature": "getProperty(\"password\")"
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 332,
      "candidates": [
         {
            "ref": 234
         }
      ],
      "previous": {
         "ref": 283
      },
      "sender": {
         "ref": 329
      },
      "signature": "printStackTrace()"
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 333,
      "element": {
         "ref": 225
      },
      "endPos": 1926,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Calling Stored Procedures/src/stored/procedures/in/IncreaseSalariesForDepartment.java",
      "startPos": 1893
   },
   {
      "FM3": "Famix-Java-Entities.LocalVariable",
      "id": 334,
      "name": "theUser",
      "parentBehaviouralEntity": {
         "ref": 329
      }
   },
   {
      "FM3": "Famix-Java-Entities.Parameter",
      "id": 335,
      "name": "args",
      "parentBehaviouralEntity": {
         "ref": 3
      }
   },
   {
      "FM3": "Famix-Java-Entities.Invocation",
      "id": 336,
      "candidates": [
         {
            "ref": 234
         }
      ],
      "previous": {
         "ref": 43
      },
      "sender": {
         "ref": 50
      },
      "signature": "printStackTrace()"
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 337,
      "element": {
         "ref": 198
      },
      "endPos": 2491,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Calling Stored Procedures/src/stored/procedures/in/IncreaseSalariesForDepartment.java",
      "startPos": 2473
   },
   {
      "FM3": "Famix-Java-Entities.IndexedFileAnchor",
      "id": 338,
      "element": {
         "ref": 279
      },
      "endPos": 763,
      "fileName": "../JDBC_Variety_Of_Examples_Reduced/Database Configuration/src/ConnectionDemo.java",
      "startPos": 717
   }
]
	'.