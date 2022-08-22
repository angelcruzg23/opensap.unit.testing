CLASS ltcl_roman_converter DEFINITION FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PRIVATE SECTION.

    DATA: lcut TYPE REF TO zcl_abap_romain_number_conv.

    METHODS:
      setup,
      i_in_1_out FOR TESTING RAISING cx_static_check,
      ii_in_2_out FOR TESTING RAISING cx_static_check,
      iii_in_3_out FOR TESTING RAISING cx_static_check,
      ix_in_9_out FOR TESTING RAISING cx_static_check,
      cc_in_200_out FOR TESTING RAISING cx_static_check,
      d_in_500_out FOR TESTING RAISING cx_static_check,
      mmvii_in_2007_out FOR TESTING RAISING cx_static_check,
      empty_in_blank_out FOR TESTING RAISING cx_static_check,
      space_in_space_out FOR TESTING RAISING cx_static_check,
      VV_in_error_out FOR TESTING RAISING cx_static_check,
      aa_in_error_out FOR TESTING RAISING cx_static_check,
      iiii_in_error_out FOR TESTING RAISING cx_static_check,
      vx_in_error_out FOR TESTING RAISING cx_static_check,
      xxx_in_error_out FOR TESTING RAISING cx_static_check,

      teardown.
ENDCLASS.


CLASS ltcl_roman_converter IMPLEMENTATION.

  METHOD setup.
    lcut = NEW zcl_abap_romain_number_conv( ).
  ENDMETHOD.

  METHOD teardown.

  ENDMETHOD.

  METHOD xxx_in_error_out.

  ENDMETHOD.

  METHOD i_in_1_out.
    DATA(lc_output) = lcut->to_arabic( 'I' ).

    cl_abap_unit_assert=>assert_equals(
      EXPORTING
        act                  = lc_output
        exp                  =  1 ).


  ENDMETHOD.

  METHOD aa_in_error_out.

    DATA(lc_output) = lcut->to_arabic( 'AA' ).

    cl_abap_unit_assert=>assert_equals(
      EXPORTING
        act                  = lc_output
        exp                  =  '1-' ).

  ENDMETHOD.

  METHOD cc_in_200_out.
    DATA(lc_output) = lcut->to_arabic( 'CC' ).

    cl_abap_unit_assert=>assert_equals(
      EXPORTING
        act                  = lc_output
        exp                  =  200 ).
  ENDMETHOD.

  METHOD d_in_500_out.
    DATA(lc_output) = lcut->to_arabic( 'D' ).

    cl_abap_unit_assert=>assert_equals(
      EXPORTING
        act                  = lc_output
        exp                  =  500 ).
  ENDMETHOD.

  METHOD empty_in_blank_out.

    DATA(lc_output) = lcut->to_arabic( '' ).

    cl_abap_unit_assert=>assert_equals(
      EXPORTING
        act                  = lc_output
        exp                  =  '' ).

  ENDMETHOD.

  METHOD iiii_in_error_out.

    DATA(lc_output) = lcut->to_arabic( 'IIII' ).

    cl_abap_unit_assert=>assert_equals(
      EXPORTING
        act                  = lc_output
        exp                  =  '1-' ).


  ENDMETHOD.

  METHOD iii_in_3_out.

    DATA(lc_output) = lcut->to_arabic( 'III' ).

    cl_abap_unit_assert=>assert_equals(
      EXPORTING
        act                  = lc_output
        exp                  =  3 ).

  ENDMETHOD.

  METHOD ii_in_2_out.

    DATA(lc_output) = lcut->to_arabic( 'II' ).

    cl_abap_unit_assert=>assert_equals(
      EXPORTING
        act                  = lc_output
        exp                  =  2 ).

  ENDMETHOD.

  METHOD ix_in_9_out.

    DATA(lc_output) = lcut->to_arabic( 'IX' ).

    cl_abap_unit_assert=>assert_equals(
      EXPORTING
        act                  = lc_output
        exp                  =  9 ).

  ENDMETHOD.

  METHOD mmvii_in_2007_out.

    DATA(lc_output) = lcut->to_arabic( 'MMVII' ).

    cl_abap_unit_assert=>assert_equals(
      EXPORTING
        act                  = lc_output
        exp                  =  2007 ).

  ENDMETHOD.

  METHOD space_in_space_out.

    DATA(lc_output) = lcut->to_arabic( space ).

    cl_abap_unit_assert=>assert_equals(
      EXPORTING
        act                  = lc_output
        exp                  =  space ).

  ENDMETHOD.

  METHOD vv_in_error_out.

    DATA(lc_output) = lcut->to_arabic( 'VV' ).

    cl_abap_unit_assert=>assert_equals(
      EXPORTING
        act                  = lc_output
        exp                  =  '1-' ).

  ENDMETHOD.

  METHOD vx_in_error_out.

    DATA(lc_output) = lcut->to_arabic( 'VX' ).

    cl_abap_unit_assert=>assert_equals(
      EXPORTING
        act                  = lc_output
        exp                  =  '1-' ).

  ENDMETHOD.

ENDCLASS.
