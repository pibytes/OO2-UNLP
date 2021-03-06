"
m:= TopografiaMixta newWithRandomChildrenLevel: 0.

canvas := Morph new
color: (Color black);
height: 420;
width: 420.

m drawAtX: 10 Y: 10 H: 400 W: 400.

canvas addMorph: (m figure).
canvas openInWindowLabeled: 'Topografia'.

m getChildren.
m calculateProportion asFloat.

---------------------------
canvas:= Morph new
color: (Color black alpha: 0.8);
height: 420;
width: 420.

f := Morph new
color: (Color red alpha: 0.8);
position: (canvas position + (10@10));
height: 400;
width: 400.

c1:= Morph new.
c1 color: (Color blue alpha: 0.8).
c1 height: (f height / 2).
c1 width:  (f width / 2).
c1 position: (f position + (0@0)).
c2:= Morph new.
c2 color: (Color blue alpha: 0.8).
c2 height: (f height / 2).
c2 width:  (f width / 2).
c2 position: (f position + ((f height / 2)@(f height / 2))).
f addMorph: c1.
f addMorph: c2.
canvas addMorph: f.
canvas openInWindow.
"
Class {
	#name : #Topografia,
	#superclass : #Object,
	#instVars : [
		'proportion',
		'recursionLevel',
		'maxRecursionLevel',
		'figure'
	],
	#category : #'OO2-TP4-Topografia-Model'
}

{ #category : #'as yet unclassified' }
Topografia >> calculateProportion [
	^ self subclassResponsibility.
]

{ #category : #drawing }
Topografia >> drawAtX: x Y: y H: h W: w [
	"figure borderWidth: 1.
	figure borderColor: (Color black)."
	figure height: h.
	figure width: w.
	figure position: (x@y).
]

{ #category : #comparing }
Topografia >> equals: anotherTopografia [
^ self subclassResponsibility 
]

{ #category : #accessing }
Topografia >> figure [
	^figure
]

{ #category : #initialization }
Topografia >> initialize [
	maxRecursionLevel := 10.
	figure := Morph new.
]

{ #category : #accessing }
Topografia >> proportion: aNumber [
	proportion := aNumber
]

{ #category : #accessing }
Topografia >> recursionLevel [
	^ recursionLevel
]

{ #category : #accessing }
Topografia >> recursionLevel: aNumber [ 
	recursionLevel := aNumber 
]
