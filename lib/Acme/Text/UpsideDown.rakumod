my constant $up =
  Q｢*!"&'(),.12345679;<>?ABCDEFGJKLMNPQRTUVWY][^_`abcdefghijklmnpqrtuvwy{}⁅⁆∵∴⁀‿🙂｣;

my constant $down =
  Q｢⁎¡„⅋͵)(‘˙⇂ᘔε⇁⃓ᔕ9L6⋅̕><¿∀ᗺↃ◖ƎℲ⅁ᒋ丬ᒣWᴎԀΌȢ⊥ᑎΛM⅄[]‿‾ ̖ɐqɔpǝɟɓɥᴉſ̣ʞꞁɯudbɹʇnʌʍʎ}{⁆⁅∴∵‿⁀🙃｣;

my constant $from = $up ~ $down;
my constant $to   = $down ~ $up;

my sub upsidedown(Str:D $string) is export {
    $string.lines.map( *.trans( $from => $to ).flip ).reverse.join("\n")
}
my constant &uʍopǝpᴉsdn is export = &upsidedown;

# vim: expandtab shiftwidth=4
