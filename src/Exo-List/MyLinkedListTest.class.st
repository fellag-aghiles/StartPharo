Class {
	#name : 'MyLinkedListTest',
	#superclass : 'TestCase',
	#category : 'Exo-List',
	#package : 'Exo-List'
}

{ #category : 'running' }
MyLinkedListTest >> testBasics [
    | list |
    list := MyLinkedList new.
    
    "Check 1: Is it empty at start?"
    self assert: list isEmpty.
    self assert: list size equals: 0.
    
    "Check 2: Does add work?"
    list add: 'A'.
    self assert: list size equals: 1.
    self deny: list isEmpty.
]

{ #category : 'running' }
MyLinkedListTest >> testEverything [
    | list |
    list := MyLinkedList new.
    list add: 'A'; add: 'B'.
    self assert: list size equals: 2.
    self assert: (list includes: 'A').
    list remove: 'B'.
    self assert: list size equals: 1.
]

{ #category : 'running' }
MyLinkedListTest >> testIncludes [
    | list |
    list := MyLinkedList new.
    list add: 'Apple'.
    list add: 'Banana'.
    
    self assert: (list includes: 'Apple').
    self assert: (list includes: 'Banana').
    self deny: (list includes: 'Orange').
]

{ #category : 'running' }
MyLinkedListTest >> testRemove [
    | list |
    list := MyLinkedList new.
    
    "Scenario 1: Empty list"
    list remove: 'A'.
    self assert: list isEmpty.
    
    "Scenario 2: Remove the head"
    list add: 'A'.
    list remove: 'A'.
    self assert: list isEmpty.
    
    "Scenario 3: Remove from middle/end"
    list add: 'A'; add: 'B'; add: 'C'. "Chain is C -> B -> A"
    list remove: 'B'.
    self assert: list size equals: 2.
    self deny: (list includes: 'B').
    self assert: (list includes: 'C').
    self assert: (list includes: 'A').
]
