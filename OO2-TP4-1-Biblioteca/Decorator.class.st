Class {
	#name : #Decorator,
	#superclass : #Exporter,
	#instVars : [
		'wrappee'
	],
	#category : #'OO2-TP4-1-Biblioteca-Model'
}

{ #category : #'as yet unclassified' }
Decorator >> decorator: anExporter [
	wrappee := anExporter
]

{ #category : #exporting }
Decorator >> export: socios [
	wrappee export: socios
	
]
