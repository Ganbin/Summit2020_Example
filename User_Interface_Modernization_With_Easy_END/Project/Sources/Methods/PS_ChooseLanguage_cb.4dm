//%attributes = {"shared":true}
C_OBJECT:C1216($1;$params)

$params:=$1

Form:C1466.current_lang:=$params.lang
SET DATABASE LOCALIZATION:C1104($params.lang)

Form:C1466.title:=Get localized string:C991("main.general.scanArticles")

FORM GOTO PAGE:C247(2)