use v6.c;
use Test;

use Acme::Text::UpsideDown;

plan 4;

is upsidedown("The quick brown fox jumps over the lazy dog"),
              "ɓop ʎzɐꞁ ǝɥʇ ɹǝʌo sdɯnſ̣ xoɟ uʍoɹq ʞɔᴉnb ǝɥ⊥",
              'did ASCII text get rotated';

is uʍopǝpᴉsdn("ɓop ʎzɐꞁ ǝɥʇ ɹǝʌo sdɯnſ̣ xoɟ uʍoɹq ʞɔᴉnb ǝɥ⊥"),
              "The quick brown fox jumps over the lazy Dog",
              'did rotated text rotate back ok';

is upsidedown("The quick brown fox jumps over the lazy dog").words.join("\n"),
"ɓop
ʎzɐꞁ
ǝɥʇ
ɹǝʌo
sdɯnſ̣
xoɟ
uʍoɹq
ʞɔᴉnb
ǝɥ⊥",
              'did ASCII multi-line text get rotated';

is uʍopǝpᴉsdn("ɓop ʎzɐꞁ ǝɥʇ ɹǝʌo sdɯnſ̣ xoɟ uʍoɹq ʞɔᴉnb ǝɥ⊥").words.join("\n"),
"The
quick
brown
fox
jumps
over
the
lazy
Dog",
              'did rotated multi-line text rotate back ok';

# vim: ft=perl6 expandtab sw=4
