REPORT zrdv_aie_lab03.

CLASS lcl_monster DEFINITION.

PUBLIC SECTION.
    METHODS: main.

ENDCLASS.

CLASS lcl_monster IMPLEMENTATION.

METHOD main.
* Local Variables
  DATA: monster_madness1 TYPE i,
        monster_madness2 TYPE i,
        monster_madness3 TYPE i,
        description1     TYPE string,
        description2     TYPE string,
        description3     TYPE string.

  monster_madness1 = 25.
  monster_madness2 = 50.
  monster_madness3 = 100.

* DeriveMonsterSanity
  IF monster_madness1 LT 30.
    description1 ='FAIRLYSANE'.
  ELSEIF monster_madness1 GT 90.
    description1 = 'BONKERS'.
  ELSE.
    description1 = 'AVERAGESANITY'.
  ENDIF.

  IF monster_madness2 LT 30.
    description2 = 'FAIRLYSANE'.
  ELSEIF monster_madness2 GT 90.
    description2 = 'BONKERS'.
  ELSE.
    description2 = 'AVERAGESANITY'.
  ENDIF.

  IF monster_madness3 LT 30.
    description3 = 'FAIRLYSANE'.
  ELSEIF monster_madness3 GT 90.
    description3 = 'BONKERS'.
  ELSE.
    description3 = 'AVERAGESANITY'.
  ENDIF.

ENDMETHOD.

ENDCLASS.
