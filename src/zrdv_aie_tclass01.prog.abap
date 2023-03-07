REPORT zrdv_aie_tclass01.

CLASS lcl_how_many_monsters DEFINITION.
  PUBLIC SECTION.
    METHODS how_many_make_five RETURNING VALUE(rd_how_many) TYPE i.
ENDCLASS. "HowManyMonstersDefinition

CLASS lcl_how_many_monsters IMPLEMENTATION.

  METHOD how_many_make_five.
    DO 100 TIMES.
      ADD 1 TO rd_how_many.

      IF rd_how_many = 5.
        RETURN.
      ENDIF.

    ENDDO.

  ENDMETHOD.

ENDCLASS. "HowManyMonstersimplementation

DATA: how_many TYPE i,
      counter  TYPE REF TO lcl_how_many_monsters.

START-OF-SELECTION.

   BREAK-POINT.

  CREATE OBJECT counter.
  how_many = counter->how_many_make_five( ).
  WRITE:/ how_many.
