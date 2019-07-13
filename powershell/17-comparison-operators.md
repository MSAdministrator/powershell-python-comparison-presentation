# PowerShell Comparison Operators
> Comparison operators let you specify conditions for comparing values and finding values that match specified patterns.

| Type | Operators    | Description |
|------|--------------|-------------|
|Equality|-eq|equals|
||-ne|not equals|
||-gt|greater than|
||-ge|greater than or equal|
||-lt|less than|
||-le|less than or equal|
|Matching|-like|Returns true when string matches wildcard pattern|
||-notlike|Returns true when string does not match pattern|
||-match|Returns true when string matches regex pattern|
||-notmatch|Returns true when string does not match regex pattern|
|Containment|-contains|Returns true when reference value contained in a collection|
||-notcontains|Returns true when reference value not contained in a collection|
||-in|Returns true when test value contained in a collection|
||-notin|Returns true when test value not contained in a collection|
|Replacement|-replace|Replaces a string pattern|
|Type|-is|Returns true if both object are the same
type|
||-isnot|Returns true if the objects are not the same type|