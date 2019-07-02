Class {
	#name : #PreferencePresenter,
	#superclass : #SpComposablePresenter,
	#instVars : [
		'inputText'
	],
	#category : #'PUGizmo-GUISpec2'
}

{ #category : #specs }
PreferencePresenter class >> defaultSpec [
	^ SpBoxLayout newVertical
		add:
			'You can change colors and font of the drawing using the skinparam command.'
			withConstraints: [ :constraints | constraints height: self defaultFont height ];
		add: 'ex. skinparam backgroundColor transparent'
			withConstraints: [ :constraints | constraints height: self defaultFont height ];
		add: #inputText;
		yourself
]

{ #category : #example }
PreferencePresenter class >> open [ 
<example>
self new openDialogWithSpec 
]

{ #category : #initialization }
PreferencePresenter >> initializeWidgets [
	inputText := self newText autoAccept: true.
	self focusOrder add: inputText
]

{ #category : #initialization }
PreferencePresenter >> initializeWindow: aWindowPresenter [
	aWindowPresenter title: self title
]

{ #category : #accessing }
PreferencePresenter >> preference [
	^ inputText text
]

{ #category : #accessing }
PreferencePresenter >> preference: aString [
	inputText text: aString
]

{ #category : #api }
PreferencePresenter >> title [ 
^'Preference'
]