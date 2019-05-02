# Undocumented code objects:
#   ‘accessKey’ ‘alternativeClaimantCount’ ‘pensionCredits’ ‘schemaUrl’
# ‘statx_schema_contents’ ‘statx_schema_contents_full_url’ ‘tableUrl’
# All user-level objects in a package should have documentation entries.

accessKey <- Sys.getenv("StatXploreApiKey")

tableUrl <- "https://stat-xplore.dwp.gov.uk/webapi/rest/v1/table"

schemaUrl <- "https://stat-xplore.dwp.gov.uk/webapi/rest/v1/schema/"

pensionCredits <- '{
	"database": "str:database:PC",
  "measures": ["str:count:PC:V_F_PC_CASELOAD"],
  "recodes": {
    "str:field:PC:V_F_PC_CASELOAD:COA_CODE": {
      "map": [
        ["str:value:PC:V_F_PC_CASELOAD:COA_CODE:V_C_GEOG05_LA_to_REGION:S12000033"],
        ["str:value:PC:V_F_PC_CASELOAD:COA_CODE:V_C_GEOG05_LA_to_REGION:S12000034"],
        ["str:value:PC:V_F_PC_CASELOAD:COA_CODE:V_C_GEOG05_LA_to_REGION:S12000041"],
        ["str:value:PC:V_F_PC_CASELOAD:COA_CODE:V_C_GEOG05_LA_to_REGION:S12000035"],
        ["str:value:PC:V_F_PC_CASELOAD:COA_CODE:V_C_GEOG05_LA_to_REGION:S12000036"],
        ["str:value:PC:V_F_PC_CASELOAD:COA_CODE:V_C_GEOG05_LA_to_REGION:S12000005"],
        ["str:value:PC:V_F_PC_CASELOAD:COA_CODE:V_C_GEOG05_LA_to_REGION:S12000006"],
        ["str:value:PC:V_F_PC_CASELOAD:COA_CODE:V_C_GEOG05_LA_to_REGION:S12000042"],
        ["str:value:PC:V_F_PC_CASELOAD:COA_CODE:V_C_GEOG05_LA_to_REGION:S12000008"],
        ["str:value:PC:V_F_PC_CASELOAD:COA_CODE:V_C_GEOG05_LA_to_REGION:S12000009"],
        ["str:value:PC:V_F_PC_CASELOAD:COA_CODE:V_C_GEOG05_LA_to_REGION:S12000010"],
        ["str:value:PC:V_F_PC_CASELOAD:COA_CODE:V_C_GEOG05_LA_to_REGION:S12000011"],
        ["str:value:PC:V_F_PC_CASELOAD:COA_CODE:V_C_GEOG05_LA_to_REGION:S12000014"],
        ["str:value:PC:V_F_PC_CASELOAD:COA_CODE:V_C_GEOG05_LA_to_REGION:S12000015"],
        ["str:value:PC:V_F_PC_CASELOAD:COA_CODE:V_C_GEOG05_LA_to_REGION:S12000043"],
        ["str:value:PC:V_F_PC_CASELOAD:COA_CODE:V_C_GEOG05_LA_to_REGION:S12000017"],
        ["str:value:PC:V_F_PC_CASELOAD:COA_CODE:V_C_GEOG05_LA_to_REGION:S12000018"],
        ["str:value:PC:V_F_PC_CASELOAD:COA_CODE:V_C_GEOG05_LA_to_REGION:S12000019"],
        ["str:value:PC:V_F_PC_CASELOAD:COA_CODE:V_C_GEOG05_LA_to_REGION:S12000020"],
        ["str:value:PC:V_F_PC_CASELOAD:COA_CODE:V_C_GEOG05_LA_to_REGION:S12000013"],
        ["str:value:PC:V_F_PC_CASELOAD:COA_CODE:V_C_GEOG05_LA_to_REGION:S12000021"],
        ["str:value:PC:V_F_PC_CASELOAD:COA_CODE:V_C_GEOG05_LA_to_REGION:S12000044"],
        ["str:value:PC:V_F_PC_CASELOAD:COA_CODE:V_C_GEOG05_LA_to_REGION:S12000023"],
        ["str:value:PC:V_F_PC_CASELOAD:COA_CODE:V_C_GEOG05_LA_to_REGION:S12000024"],
        ["str:value:PC:V_F_PC_CASELOAD:COA_CODE:V_C_GEOG05_LA_to_REGION:S12000038"],
        ["str:value:PC:V_F_PC_CASELOAD:COA_CODE:V_C_GEOG05_LA_to_REGION:S12000026"],
        ["str:value:PC:V_F_PC_CASELOAD:COA_CODE:V_C_GEOG05_LA_to_REGION:S12000027"],
        ["str:value:PC:V_F_PC_CASELOAD:COA_CODE:V_C_GEOG05_LA_to_REGION:S12000028"],
        ["str:value:PC:V_F_PC_CASELOAD:COA_CODE:V_C_GEOG05_LA_to_REGION:S12000029"],
        ["str:value:PC:V_F_PC_CASELOAD:COA_CODE:V_C_GEOG05_LA_to_REGION:S12000030"],
        ["str:value:PC:V_F_PC_CASELOAD:COA_CODE:V_C_GEOG05_LA_to_REGION:S12000039"],
        ["str:value:PC:V_F_PC_CASELOAD:COA_CODE:V_C_GEOG05_LA_to_REGION:S12000040"]
      ],
      "total": false
    },
    "str:field:PC:V_F_PC_CASELOAD:CNAGE": {
      "map": [
        ["str:value:PC:V_F_PC_CASELOAD:CNAGE:C_PC_AGE_BAND:1"],
        ["str:value:PC:V_F_PC_CASELOAD:CNAGE:C_PC_AGE_BAND:2"],
        ["str:value:PC:V_F_PC_CASELOAD:CNAGE:C_PC_AGE_BAND:3"],
        ["str:value:PC:V_F_PC_CASELOAD:CNAGE:C_PC_AGE_BAND:4"],
        ["str:value:PC:V_F_PC_CASELOAD:CNAGE:C_PC_AGE_BAND:5"],
        ["str:value:PC:V_F_PC_CASELOAD:CNAGE:C_PC_AGE_BAND:6"],
        ["str:value:PC:V_F_PC_CASELOAD:CNAGE:C_PC_AGE_BAND:7"],
        ["str:value:PC:V_F_PC_CASELOAD:CNAGE:C_PC_AGE_BAND:999"]
      ],
      "total": false
    },
    "str:field:PC:V_F_PC_CASELOAD:PCTYPE": {
      "map": [
        ["str:value:PC:V_F_PC_CASELOAD:PCTYPE:C_PC_PCTYPE:1"],
        ["str:value:PC:V_F_PC_CASELOAD:PCTYPE:C_PC_PCTYPE:2"],
        ["str:value:PC:V_F_PC_CASELOAD:PCTYPE:C_PC_PCTYPE:3"],
        ["str:value:PC:V_F_PC_CASELOAD:PCTYPE:C_PC_PCTYPE:4"]
      ],
      "total": false
    },
    "str:field:PC:F_PC_QTR:DATE_NAME": {
      "map": [
        ["str:value:PC:F_PC_QTR:DATE_NAME:C_PC_QTR:201802"]
      ],
      "total": false
    },
    "str:field:PC:V_F_PC_CASELOAD:CCSEX": {
      "map": [
        ["str:value:PC:V_F_PC_CASELOAD:CCSEX:C_PC_CCSEX:1"],
        ["str:value:PC:V_F_PC_CASELOAD:CCSEX:C_PC_CCSEX:2"],
        ["str:value:PC:V_F_PC_CASELOAD:CCSEX:C_PC_CCSEX:99"]
      ],
      "total": false
    },
    "str:field:PC:V_F_PC_CASELOAD:CTDURTN": {
      "map": [
        ["str:value:PC:V_F_PC_CASELOAD:CTDURTN:C_PC_DURTN:1"],
        ["str:value:PC:V_F_PC_CASELOAD:CTDURTN:C_PC_DURTN:2"],
        ["str:value:PC:V_F_PC_CASELOAD:CTDURTN:C_PC_DURTN:3"],
        ["str:value:PC:V_F_PC_CASELOAD:CTDURTN:C_PC_DURTN:4"],
        ["str:value:PC:V_F_PC_CASELOAD:CTDURTN:C_PC_DURTN:5"],
        ["str:value:PC:V_F_PC_CASELOAD:CTDURTN:C_PC_DURTN:6"],
        ["str:value:PC:V_F_PC_CASELOAD:CTDURTN:C_PC_DURTN:999"]
      ],
      "total": false
    }
  },
  "dimensions": [
    ["str:field:PC:V_F_PC_CASELOAD:COA_CODE"],
    ["str:field:PC:F_PC_QTR:DATE_NAME"],
    ["str:field:PC:V_F_PC_CASELOAD:CNAGE"],
    ["str:field:PC:V_F_PC_CASELOAD:CTDURTN"],
    ["str:field:PC:V_F_PC_CASELOAD:CCSEX"],
    ["str:field:PC:V_F_PC_CASELOAD:AMTGP"],
    ["str:field:PC:V_F_PC_CASELOAD:PTNR"],
    ["str:field:PC:V_F_PC_CASELOAD:PCTYPE"]
  ]
}'

alternativeClaimantCount <- '{
  "database" : "str:database:ACC",
  "measures" : [ "str:count:ACC:V_F_ACC" ],
  "recodes" : {
    "str:field:ACC:V_F_ACC:AGE" : {
      "map" : [
        [ "str:value:ACC:V_F_ACC:AGE:C_ACC_AGE_BAND:1" ],
        [ "str:value:ACC:V_F_ACC:AGE:C_ACC_AGE_BAND:2" ],
        [ "str:value:ACC:V_F_ACC:AGE:C_ACC_AGE_BAND:3" ],
        [ "str:value:ACC:V_F_ACC:AGE:C_ACC_AGE_BAND:4" ],
        [ "str:value:ACC:V_F_ACC:AGE:C_ACC_AGE_BAND:5" ],
        [ "str:value:ACC:V_F_ACC:AGE:C_ACC_AGE_BAND:6" ],
        [ "str:value:ACC:V_F_ACC:AGE:C_ACC_AGE_BAND:7" ],
        [ "str:value:ACC:V_F_ACC:AGE:C_ACC_AGE_BAND:8" ],
        [ "str:value:ACC:V_F_ACC:AGE:C_ACC_AGE_BAND:9" ],
        [ "str:value:ACC:V_F_ACC:AGE:C_ACC_AGE_BAND:10" ],
        [ "str:value:ACC:V_F_ACC:AGE:C_ACC_AGE_BAND:99" ]
      ],
      "total" : true
    },
    "str:field:ACC:V_F_ACC:GROUP" : {
      "map" : [
        [ "str:value:ACC:V_F_ACC:GROUP:C_ACC_GROUPCLASS:1" ],
        [ "str:value:ACC:V_F_ACC:GROUP:C_ACC_GROUPCLASS:2" ],
        [ "str:value:ACC:V_F_ACC:GROUP:C_ACC_GROUPCLASS:3" ]
      ],
      "total" : true
    },
    "str:field:ACC:V_F_ACC:OA11" : {
      "map" : [
        [ "str:value:ACC:V_F_ACC:OA11:V_C_MASTERGEOG11_LA_TO_REGION:S12000033" ],
        [ "str:value:ACC:V_F_ACC:OA11:V_C_MASTERGEOG11_LA_TO_REGION:S12000034" ],
        [ "str:value:ACC:V_F_ACC:OA11:V_C_MASTERGEOG11_LA_TO_REGION:S12000041" ],
        [ "str:value:ACC:V_F_ACC:OA11:V_C_MASTERGEOG11_LA_TO_REGION:S12000035" ],
        [ "str:value:ACC:V_F_ACC:OA11:V_C_MASTERGEOG11_LA_TO_REGION:S12000036" ],
        [ "str:value:ACC:V_F_ACC:OA11:V_C_MASTERGEOG11_LA_TO_REGION:S12000005" ],
        [ "str:value:ACC:V_F_ACC:OA11:V_C_MASTERGEOG11_LA_TO_REGION:S12000006" ],
        [ "str:value:ACC:V_F_ACC:OA11:V_C_MASTERGEOG11_LA_TO_REGION:S12000042" ],
        [ "str:value:ACC:V_F_ACC:OA11:V_C_MASTERGEOG11_LA_TO_REGION:S12000008" ],
        [ "str:value:ACC:V_F_ACC:OA11:V_C_MASTERGEOG11_LA_TO_REGION:S12000045" ],
        [ "str:value:ACC:V_F_ACC:OA11:V_C_MASTERGEOG11_LA_TO_REGION:S12000010" ],
        [ "str:value:ACC:V_F_ACC:OA11:V_C_MASTERGEOG11_LA_TO_REGION:S12000011" ],
        [ "str:value:ACC:V_F_ACC:OA11:V_C_MASTERGEOG11_LA_TO_REGION:S12000014" ],
        [ "str:value:ACC:V_F_ACC:OA11:V_C_MASTERGEOG11_LA_TO_REGION:S12000047" ],
        [ "str:value:ACC:V_F_ACC:OA11:V_C_MASTERGEOG11_LA_TO_REGION:S12000046" ],
        [ "str:value:ACC:V_F_ACC:OA11:V_C_MASTERGEOG11_LA_TO_REGION:S12000017" ],
        [ "str:value:ACC:V_F_ACC:OA11:V_C_MASTERGEOG11_LA_TO_REGION:S12000018" ],
        [ "str:value:ACC:V_F_ACC:OA11:V_C_MASTERGEOG11_LA_TO_REGION:S12000019" ],
        [ "str:value:ACC:V_F_ACC:OA11:V_C_MASTERGEOG11_LA_TO_REGION:S12000020" ],
        [ "str:value:ACC:V_F_ACC:OA11:V_C_MASTERGEOG11_LA_TO_REGION:S12000013" ],
        [ "str:value:ACC:V_F_ACC:OA11:V_C_MASTERGEOG11_LA_TO_REGION:S12000021" ],
        [ "str:value:ACC:V_F_ACC:OA11:V_C_MASTERGEOG11_LA_TO_REGION:S12000044" ],
        [ "str:value:ACC:V_F_ACC:OA11:V_C_MASTERGEOG11_LA_TO_REGION:S12000023" ],
        [ "str:value:ACC:V_F_ACC:OA11:V_C_MASTERGEOG11_LA_TO_REGION:S12000048" ],
        [ "str:value:ACC:V_F_ACC:OA11:V_C_MASTERGEOG11_LA_TO_REGION:S12000038" ],
        [ "str:value:ACC:V_F_ACC:OA11:V_C_MASTERGEOG11_LA_TO_REGION:S12000026" ],
        [ "str:value:ACC:V_F_ACC:OA11:V_C_MASTERGEOG11_LA_TO_REGION:S12000027" ],
        [ "str:value:ACC:V_F_ACC:OA11:V_C_MASTERGEOG11_LA_TO_REGION:S12000028" ],
        [ "str:value:ACC:V_F_ACC:OA11:V_C_MASTERGEOG11_LA_TO_REGION:S12000029" ],
        [ "str:value:ACC:V_F_ACC:OA11:V_C_MASTERGEOG11_LA_TO_REGION:S12000030" ],
        [ "str:value:ACC:V_F_ACC:OA11:V_C_MASTERGEOG11_LA_TO_REGION:S12000039" ],
        [ "str:value:ACC:V_F_ACC:OA11:V_C_MASTERGEOG11_LA_TO_REGION:S12000040" ]
      ],
      "total" : true
    },
    "str:field:ACC:F_ACC_DATE_new:DATE_NAME" : {
      "map" : [
        [ "str:value:ACC:F_ACC_DATE_new:DATE_NAME:C_ACC_DATE:201302" ],
        [ "str:value:ACC:F_ACC_DATE_new:DATE_NAME:C_ACC_DATE:201402" ],
        [ "str:value:ACC:F_ACC_DATE_new:DATE_NAME:C_ACC_DATE:201502" ],
        [ "str:value:ACC:F_ACC_DATE_new:DATE_NAME:C_ACC_DATE:201602" ],
        [ "str:value:ACC:F_ACC_DATE_new:DATE_NAME:C_ACC_DATE:201702" ],
        [ "str:value:ACC:F_ACC_DATE_new:DATE_NAME:C_ACC_DATE:201802" ],
        [ "str:value:ACC:F_ACC_DATE_new:DATE_NAME:C_ACC_DATE:201902" ]
      ],
      "total" : false
    },
    "str:field:ACC:V_F_ACC:CCSEX" : {
      "map" : [
        [ "str:value:ACC:V_F_ACC:CCSEX:C_ACC_CCSEX:M" ],
        [ "str:value:ACC:V_F_ACC:CCSEX:C_ACC_CCSEX:F" ]
      ],
      "total" : true
    }
  },
  "dimensions" : [
    [ "str:field:ACC:V_F_ACC:OA11" ],
    [ "str:field:ACC:F_ACC_DATE_new:DATE_NAME" ],
    [ "str:field:ACC:V_F_ACC:AGE" ],
    [ "str:field:ACC:V_F_ACC:CCSEX" ],
    [ "str:field:ACC:V_F_ACC:GROUP" ]
  ]
}'



