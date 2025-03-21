action
merge: fileName
    | duplicateIdentifier fileSaver |
    inputFiles do: [:each | self load: each].
    duplicateIdentifier := CZDuplicateIdentifier new.
    fileSaver := CZFileSaver new. 
    bibset := duplicateIdentifier withoutInternalKeyDuplicates: bibset.
    fileSaver bibset: bibset ; saveTo: fileName