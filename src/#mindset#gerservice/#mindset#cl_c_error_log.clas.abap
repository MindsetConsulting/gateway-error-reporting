class /MINDSET/CL_C_ERROR_LOG definition
  public
  inheriting from CL_SADL_GTK_EXPOSURE_MPC
  final
  create public .

public section.
protected section.

  methods GET_PATHS
    redefinition .
  methods GET_TIMESTAMP
    redefinition .
private section.
ENDCLASS.



CLASS /MINDSET/CL_C_ERROR_LOG IMPLEMENTATION.


  method GET_PATHS.
et_paths = VALUE #(
( |CDS~/MINDSET/C_ERROR_LOG| )
).
  endmethod.


  method GET_TIMESTAMP.
RV_TIMESTAMP = 20190414162614.
  endmethod.
ENDCLASS.
