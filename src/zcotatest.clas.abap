class ZCOTATEST definition
  public
  inheriting from CL_COMM_TARGET_HTTP_LV5
  create public .

public section.

  methods CONSTRUCTOR
    importing
      value(APPLICATION_DESTINATION) type SAPPDESTNAME optional
    raising
      CX_APPDESTINATION
      CX_COMMUNICATION_TARGET_ERROR .
protected section.
private section.

  constants CID type CL_COMMUNICATION_TARGET_ROOT=>NAME_TYPE value 'ZCOTATEST' ##NO_TEXT.
  constants CMAINTYPE type MAIN_TYPE value HTTP ##NO_TEXT.
  constants CMULTIPLE_APPDESTS type ABAP_BOOL value 'X' ##NO_TEXT.
  constants CTEMPLATE_PATHPREFIX type STRING value 'test123' ##NO_TEXT.
  constants Ccreated_by_cota type CL_COMMUNICATION_TARGET_ROOT=>NAME_TYPE value 'ZCOTATEST' ##NO_TEXT.
ENDCLASS.



CLASS ZCOTATEST IMPLEMENTATION.


  method CONSTRUCTOR.
  SUPER->constructor(
    EXPORTING
      id = cid
      template_pathprefix = CTEMPLATE_PATHPREFIX
      SECKEY = CONV int8( '4724507284814732325-' )
      created_by_cota = Ccreated_by_cota
      multiple_appdests = CMULTIPLE_APPDESTS
      application_destination = application_destination
     ).
  endmethod.
ENDCLASS.
