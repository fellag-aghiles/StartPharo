Class {
	#name : 'MyNode',
	#superclass : 'Object',
	#instVars : [
		'value',
		'next'
	],
	#category : 'Exo-List',
	#package : 'Exo-List'
}

{ #category : 'accessing' }
MyNode >> next [
    ^ next
]

{ #category : 'accessing' }
MyNode >> next: aNode [
    next := aNode
]

{ #category : 'accessing' }
MyNode >> value [
    ^ value
]

{ #category : 'accessing' }
MyNode >> value: anObject [
    value := anObject
]
