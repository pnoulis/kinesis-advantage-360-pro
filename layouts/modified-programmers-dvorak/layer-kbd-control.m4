##   -----------------------------------------------------------------------------      LAYER_KBD_CONTROL      ------------------------------------------------------------------------------  #
##   ,-----+-----+-----+-----+-----+----------+-----------.                                                                              ,-----------+---------+-----+-----+-----+-----+-----. #
##   |     |     |     |     |     |          |           |                                                                              |           |         |     |     |     |     |     | #
##   |     |     |     |     |     |          | WIRED     |                                                                              |  TOGGLE   |         |     |     |     |     |     | #
##   |     |     |     |     |     |          | PROFILE   |                                                                              |  LAYER_04 |         |     |     |     |     |     | #
##   |-----+-----+-----+-----+-----+----------+-----------|                                                                              |-----------+---------+-----+-----+-----+-----+-----| #
##   |     |     |     |     |     |          |           |                                                                              |           |         |     |     |     |     |     | #
##   |     |     |     |     |     |          | BLUETOOTH |                                                                              | BLUETOOTH |         |     |     |     |     |     | #
##   |     |     |     |     |     |          | PROFILE_1 |                                                                              | PROFILE_3 |         |     |     |     |     |     | #
##   |-----+-----+-----+-----+-----+----------+-----------|              ,----------+------------.  ,----------+----------.              |-----------+---------+-----+-----+-----+-----+-----| #
##   |     |     |     |     |     |          |           |              | PRINT    |            |  |          |          |              |           |         |     |     |     |     |     | #
##   | Esc |     |     |     |     |          | BLUETOOTH |              | FIRMWARE | TOGGLE     |  |          |          |              | BLUETOOTH |         |     |     |     |     |     | #
##   |     |     |     |     |     |          | PROFILE_2 |              | VERSION  | BACKLIGHT  |  |          |          |              | PROFILE_4 |         |     |     |     |     |     | #
##   |-----+-----+-----+-----+-----+----------+-----------' .------------+----------+------------|  |----------+----------+------------. '-----------+---------+-----+-----+-----+-----+-----| #
##   |     |     |     |     |     |          |             |            |          | INCREASE   |  | FORGET   |          |            |             |         |     |     |     |     |     | #
##   |     |     |     |     |     |          |             |            | SOFT     | BACKLIGHT  |  | ACTIVE   | SOFT     |            |             |         |     |     |     |     |     | #
##   |     |     |     |     |     |          |             | LEFT       | LEFT     | BRIGHTNESS |  | PROFILE  | RIGHT    | RIGHT      |             |         |     |     |     |     |     | #
##   |-----+-----+-----+-----+-----+----------'             | BOTTLOADER | FIRMWARE |------------|  |----------| FIRMWARE | BOOTLOADER |             '---------+-----+-----+-----+-----+-----| #
##   |     |     |     |     |     |                        | MODE       | RESET    | DECREASE   |  | FORGET   | RESET    | MODE       |                       |     |     |     |     |     | #
##   |     |     |     |     |     |                        |            |          | BACKLIGHT  |  | ALL      |          |            |                       |     |     |     |     |     | #
##   |     |     |     |     |     |                        |            |          | BRIGHTNESS |  | PROFILES |          |            |                       |     |     |     |     |     | #
##   `-----+-----+-----+-----+-----'                        `------------+----------+------------'  `----------+----------+------------'                       '-----+-----+-----+-----+-----' #
##   ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- #

layer_kbd_control {
   display-name = "kbd control";
   bindings = <

     ## Row 1 left
     `blank' `blank' `blank' `blank' `blank' `blank' `&bt BT_SEL BLUETOOTH_PROFILE_WIRED' \
     ## Row 1 right
     `&tog LAYER_KBD_CONTROL' `blank' `blank' `blank' `blank' `blank' `blank'

     ## Row 2 left
     `blank' `blank' `blank' `blank' `blank' `blank' `&bt BT_SEL BLUETOOTH_PROFILE_1' \
     ## Row 2 right
     `&bt BT_SEL BLUETOOTH_PROFILE_3' `blank' `blank' `blank' `blank' `blank' `blank'

     ## Row 3 left
     `inherit' `blank' `blank' `blank' `blank' `blank' `&bt BT_SEL BLUETOOTH_PROFILE_2' `&macro_ver' `&bl BL_TOG' \
     ## Row 3 right
     `blank' `blank' `&bt BT_SEL BLUETOOTH_PROFILE_4' `blank' `blank' `blank' `blank' `blank' `blank'

     ## Row 4 left
     `blank' `blank' `blank' `blank' `blank' `blank' `&bl BL_INC' \
     ## Row 4 right
     `&bt BT_CLR' `blank' `blank' `blank' `blank' `blank' `blank'

     ## Row 5 left
     `blank' `blank' `blank' `blank' `blank' `&bootloader' `&sys_reset' `&bl BL_DEC' \
     ## Row 5 right
     `&bt BT_CLR_ALL' `&sys_reset' `&bootloader' `blank' `blank' `blank' `blank' `blank'

   >;
};
