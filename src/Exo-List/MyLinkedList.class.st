Class {
	#name : 'MyLinkedList',
	#superclass : 'Object',
	#instVars : [
		'head'
	],
	#category : 'Exo-List',
	#package : 'Exo-List'
}

{ #category : 'accessing' }
MyLinkedList >> add: anObject [
    | newNode |
    newNode := MyNode new.
    newNode value: anObject.
    newNode next: head.
    head := newNode

]

{ #category : 'accessing' }
MyLinkedList >> includes: anObject [
    | current |
    current := head.
    [ current notNil ] whileTrue: [
        (current value = anObject) ifTrue: [ ^ true ].
        current := current next
    ].
    ^ false

]

{ #category : 'initialization' }
MyLinkedList >> initialize [
    head := nil.

]

{ #category : 'accessing' }
MyLinkedList >> isEmpty [
    ^ head isNil

]

{ #category : 'accessing' }
MyLinkedList >> remove: anObject [
    | current |
    [ head notNil and: [ head value = anObject ] ] whileTrue: [
        head := head next
    ].
    current := head.
    [ current notNil and: [ current next notNil ] ] whileTrue: [
        (current next value = anObject) ifTrue: [
            current next: current next next.
        ] ifFalse: [
            current := current next
        ]
    ].

]

{ #category : 'accessing' }
MyLinkedList >> size [
    | count current |
    count := 0.
    current := head.
    [ current notNil ] whileTrue: [
        count := count + 1.
        current := current next
    ].
    ^ count

]
