"!@testing /MINDSET/C_ERROR_LOG
CLASS ltc_/mindset/c_error_log
DEFINITION FINAL FOR TESTING
DURATION SHORT
RISK LEVEL HARMLESS.
  PRIVATE SECTION.

    CLASS-DATA:
      environment TYPE REF TO if_cds_test_environment.

    CLASS-METHODS:
      "! In CLASS_SETUP, corresponding doubles and clone(s) for the CDS view under test and its dependencies are created.
      class_setup RAISING cx_static_check,
      "! In CLASS_TEARDOWN, Generated database entities (doubles & clones) should be deleted at the end of test class execution.
      class_teardown.

    DATA:
      act_results             TYPE STANDARD TABLE OF /mindset/c_error_log WITH EMPTY KEY,
      lt_/mindset/i_error_log TYPE STANDARD TABLE OF /mindset/i_error_log WITH EMPTY KEY.

    METHODS:
      "! SETUP method creates a common start state for each test method,
      "! clear_doubles clears the test data for all the doubles used in the test method before each test method execution.
      setup RAISING cx_static_check,
      prepare_testdata_set,
      "!  In this method test data is inserted into the generated double(s) and the test is executed and
      "!  the results should be asserted with the actuals.
      returns_data FOR TESTING RAISING cx_static_check,
      status_severity_for_500 FOR TESTING RAISING cx_static_check.

ENDCLASS.


CLASS ltc_/mindset/c_error_log IMPLEMENTATION.

  METHOD class_setup.
    environment = cl_cds_test_environment=>create( i_for_entity = '/MINDSET/C_ERROR_LOG' ).
  ENDMETHOD.

  METHOD setup.
    environment->clear_doubles( ).
  ENDMETHOD.

  METHOD class_teardown.
    environment->destroy( ).
  ENDMETHOD.

  METHOD returns_data.
    prepare_testdata_set( ).
    SELECT * FROM /mindset/c_error_log INTO TABLE @act_results.

    DATA(act_length) = lines( act_results ).

    cl_abap_unit_assert=>assert_differs( act = act_length exp = 0 ).
  ENDMETHOD.

  METHOD prepare_testdata_set.

    "Prepare test data for '/mindset/i_error_log'
    "TODO: Provide the test data here
    lt_/mindset/i_error_log = VALUE #(
      (
        httpstatuscode = '500'
      ) (
        httpstatuscode = '404'
      ) ).
    environment->insert_test_data( i_data =  lt_/mindset/i_error_log ).

  ENDMETHOD.

  METHOD status_severity_for_500.
    prepare_testdata_set( ).
    SELECT * FROM /mindset/c_error_log INTO TABLE @act_results
        WHERE httpstatuscode = '500'.

    DATA(act_length) = lines( act_results ).

    cl_abap_unit_assert=>assert_differs( act = act_length exp = 0 ).

    cl_abap_unit_assert=>assert_equals( act = act_results[ 1 ]-statuscodeseverity exp = 3 ).
  ENDMETHOD.

ENDCLASS.
