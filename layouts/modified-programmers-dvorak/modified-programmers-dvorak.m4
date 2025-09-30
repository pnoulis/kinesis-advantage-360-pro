#include <behaviors.dtsi>
#include <dt-bindings/zmk/keys.h>
#include <dt-bindings/zmk/bt.h>
#include <dt-bindings/zmk/rgb.h>
#include <dt-bindings/zmk/stp.h>
#include <dt-bindings/zmk/backlight.h>
#include <dt-bindings/zmk/pointing.h>

m4_include([[defines]])

/ {
    behaviors {
      #include "macros.dtsi"
      #include "version.dtsi"

      m4_include([[behaviors]])
    };

    keymap {
      compatible = "zmk,keymap";

      m4_include([[layer-dvorak]])
      m4_include([[layer-media]])
      m4_include([[layer-kbd-control]])

      extra1 {
      display-name = "Red";
      status = "reserved";
      };

      extra2 {
      display-name = "Purple";
      status = "reserved";
      };

      extra3 {
      display-name = "Cyan";
      status = "reserved";
      };

      extra4 {
      display-name = "Yellow";
      status = "reserved";
      };

    };
};
