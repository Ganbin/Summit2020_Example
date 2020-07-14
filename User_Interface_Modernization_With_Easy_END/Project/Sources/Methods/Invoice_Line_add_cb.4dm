//%attributes = {}
C_TEXT:C284($detail_form)
$detail_form:=Form:C1466.details_form
OBJECT SET SUBFORM:C1138(*;"details_sf";$detail_form)

Form:C1466.details.entity.reload()
Form:C1466.details.tip.Hide()