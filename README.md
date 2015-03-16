# IOSUtils
A iOS Utils class of useful methods. 

## Associating File Types
To associate a file type with an iOS application:

* Check if the file type is part of the [System-Declared Uniform Type Identifiers](https://developer.apple.com/library/mac/documentation/Miscellaneous/Reference/UTIRef/Articles/System-DeclaredUniformTypeIdentifiers.html)
* If so go to Targets -> Your Target -> Info -> Document Types
* Enter "Types" as the value from the above link. For example `com.adobe.pdf`
* Enter a "Name". For example `PDF`
