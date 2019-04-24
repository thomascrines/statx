accessKey <- '65794a30655841694f694a4b563151694c434a68624763694f694a49557a49314e694a392e65794a7063334d694f694a7a644849756333526c6247786863694973496e4e3159694936496e526f623231686379356a636d6c755a584e415a3239324c6e4e6a623351694c434a70595851694f6a45314e5455314d5445784d6a5573496d46315a434936496e4e30636935765a47456966512e7651472d436735634a72684c52674a79556a5f7a47427058466c6c334233384f4c5132374b4c577a347a67'
tableUrl <- "https://stat-xplore.dwp.gov.uk/webapi/rest/v1/table"
schemaUrl <- "https://stat-xplore.dwp.gov.uk/webapi/rest/v1/schema/"

requestBody <- '{"database": "str:database:PC_New",
"measures": ["str:statfn:PC_New:V_F_PC_CASELOAD_New:CAWKLYAMT:MEAN"],
"dimensions": [
["str:field:PC_New:F_PC_QTR_New:DATE_NAME"],
["str:field:PC_New:V_F_PC_CASELOAD_New:CNAGE"],
["str:field:PC_New:V_F_PC_CASELOAD_New:CTDURTN"],
["str:field:PC_New:V_F_PC_CASELOAD_New:CCSEX"],
["str:field:PC_New:V_F_PC_CASELOAD_New:AMTGP"],
["str:field:PC_New:V_F_PC_CASELOAD_New:PTNR"],
["str:field:PC_New:V_F_PC_CASELOAD_New:PCTYPE"],
["str:field:PC_New:V_F_PC_CASELOAD_New:SPC_CODE"],
["str:field:PC_New:V_F_PC_CASELOAD_New:COA_CODE"]
],
"recodes":{
"str:field:PC_New:V_F_PC_CASELOAD_New:COA_CODE":{
"map":[[
"str:value:PC_New:V_F_PC_CASELOAD_New:COA_CODE:V_C_MASTERGEOG11_COUNTRY_TO_GB:S92000003"
]]}}}'


requestBody2 <- '{"database":"str:database:CA_In_Payment",
"measures":["str:statfn:CA_In_Payment:V_F_CA_In_Payment:CAWKLYAMT:MEAN"],
"dimensions":[
["str:field:CA_In_Payment:F_CA_QTR:DATE_NAME"],
["str:field:CA_In_Payment:V_F_CA_In_Payment:CCSEX"],
["str:field:CA_In_Payment:V_F_CA_In_Payment:CNAGE"],
["str:field:CA_In_Payment:V_F_CA_In_Payment:COA_CODE"],
["str:field:CA_In_Payment:V_F_CA_In_Payment:CTDURTN"],
["str:field:CA_In_Payment:V_F_CA_In_Payment:CCCLIENT"]
],
"recodes":{
"str:field:CA_In_Payment:V_F_CA_In_Payment:COA_CODE":{
"map":[[
"str:value:CA_In_Payment:V_F_CA_In_Payment:COA_CODE:V_C_GEOG05_COA_to_LSOA:E00024278"
]]}}}'

"str:value:CA_In_Payment:V_F_CA_In_Payment:COA_CODE:V_C_GEOG00_COUNTRY_to_GB:S92000003"
