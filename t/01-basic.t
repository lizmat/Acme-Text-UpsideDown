use Test;
use Acme::Text::UpsideDown;

plan 7;

is upsidedown(
  "The quick brown fox jumps over the lazy dog"),
  "ɓop ʎzɐꞁ ǝɥʇ ɹǝʌo sdɯnſ̣ xoɟ uʍoɹq ʞɔᴉnb ǝɥ⊥",
  'did ASCII text get rotated';

is uʍopǝpᴉsdn(
  "ɓop ʎzɐꞁ ǝɥʇ ɹǝʌo sdɯnſ̣ xoɟ uʍoɹq ʞɔᴉnb ǝɥ⊥"),
  "The quick brown fox jumps over the lazy dog",
  'did rotated text rotate back ok';

is upsidedown(
  Q/!"&'(),.;<>?][_`{}⁅⁆∵∴⁀‿/),
  Q/¡„⅋͵)(‘˙⋅̕><¿[]‾ ̖}{⁆⁅∴∵‿⁀/.flip,
  'did additional non alpha characters go upsidedown';

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
dog",
              'did rotated multi-line text rotate back ok';

is upsidedown(upsidedown(
  "The quick brown fox jumps over the lazy dog")),
  "The quick brown fox jumps over the lazy dog",
  'did ASCII text get rotated back again when done twice';

is upsidedown(upsidedown(
  Q/!"&'(),.;<>?][_`{}⁅⁆∵∴⁀‿/)),
  Q/!"&'(),.;<>?][_`{}⁅⁆∵∴⁀‿/,
  'did non alpha characters come back again when done twice';

# vim: expandtab shiftwidth=4
