Class {
	#name : 'JavaDocGenerator',
	#superclass : 'Object',
	#category : 'Exo-Generator',
	#package : 'Exo-Generator'
}

{ #category : 'instance creation' }
JavaDocGenerator >> for: aClass [
	| html fileName |
	"1. Construct the HTML string using a Stream for efficiency"
	html := String streamContents: [ :s | 
		s << '<html><head><title>Documentation for ' << aClass name << '</title></head>'.
		s << '<body style="font-family: sans-serif; padding: 20px;">'.
		s << '<h1 style="color: #2c3e50;">Class: ' << aClass name << '</h1>'.
		s << '<p><strong>Comment:</strong> ' << aClass comment << '</p>'.
		s << '<h2 style="border-bottom: 1px solid #eee;">Methods</h2><ul>'.
		
		"Iterate through the methods of the class passed as an argument"
		aClass methods do: [ :each | 
			s << '<li><code>' << each selector << '</code></li>' ].
			
		s << '</ul></body></html>' ].

	"2. Create a file name and save it to your disk"
	fileName := aClass name , '.html'.
	fileName asFileReference writeStreamDo: [ :stream | 
		stream nextPutAll: html ].
		
	^ 'Success! File created: ' , fileName
]
