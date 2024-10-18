class ZBS_COTA_TEST definition
  public
  inheriting from CL_COMMUNICATION_TARGET_RFC
  create public .

public section.

  methods CONSTRUCTOR
    raising
      CX_APPDESTINATION
      CX_COMMUNICATION_TARGET_ERROR .
protected section.
private section.

  constants CID type CL_COMMUNICATION_TARGET=>NAME_TYPE value 'ZBS_COTA_TEST' ##NO_TEXT.
  constants CMULTIPLE_APPDESTS type ABAP_BOOL value ' ' ##NO_TEXT.
  constants CMULTITENANCY_MODE type CL_COMMUNICATION_TARGET_ROOT=>MULTITENANCY_MODE_TYPE value CL_COMMUNICATION_TARGET_ROOT=>CLIENT_INDEPENDENT ##NO_TEXT.
  constants Ccreated_by_cota type CL_COMMUNICATION_TARGET=>NAME_TYPE value 'ZBS_COTA_TEST' ##NO_TEXT.
ENDCLASS.



CLASS ZBS_COTA_TEST IMPLEMENTATION.


  method CONSTRUCTOR.
  SUPER->constructor(
    EXPORTING
      id = cid
      SECKEY = CONV int8( '3052962433672183163-' )
      multitenancy_mode = CMULTITENANCY_MODE
      created_by_cota = Ccreated_by_cota
      multiple_appdests = CMULTIPLE_APPDESTS
     ).
  endmethod.
ENDCLASS.
