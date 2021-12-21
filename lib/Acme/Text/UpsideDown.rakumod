my constant $up =
  Q｢!"&'(),.12345679;<>?ABCDEFGJKLMPQRTUVWY][^_`abcdefghijklmnpqrtuvwy{}⁅⁆∵∴⁀‿🙂｣;

my constant $down =
  Q｢¡„⅋͵)(‘˙⇂ᘔε⇁⃓ᔕ9L6⋅̕><¿∀ᗺↃ◖ƎℲ⅁ᒋ丬ᒣWԀΌȢ⊥ᑎΛM⅄[]‿‾ ̖ɐqɔpǝɟɓɥᴉſ̣ʞꞁɯudbɹʇnʌʍʎ}{⁆⁅∴∵‿⁀🙃｣;



my constant $from = $up ~ $down;
my constant $to   = $down ~ $up;

my sub upsidedown(Str:D $string) is export {
    $string.lines.map( *.trans( $from => $to ).flip ).reverse.join("\n")
}
my constant &uʍopǝpᴉsdn is export = &upsidedown;

=begin pod

=head1 NAME

Acme::Text::UpsideDown - provide logic to turn ASCII text upside-down

=head1 SYNOPSIS

=begin code :lang<raku>

  use Acme::Text::UpsideDown;

  say upsidedown "The quick brown fox jumps over the lazy dog";
  # ɓop ʎzɐꞁ ǝɥʇ ɹǝʌo sdɯnſ̣ xoɟ uʍoɹq ʞɔᴉnb ǝɥ⊥

  say uʍopǝpᴉsdn "ɓop ʎzɐꞁ ǝɥʇ ɹǝʌo sdɯnſ̣ xoɟ uʍoɹq ʞɔᴉnb ǝɥ⊥";
  # The quick brown fox jumps over the lazy Dog

=end code

=head1 DESCRIPTION

Acme::Text::UpsideDown provides two subroutines that can be used to create
strings from ASCII texts for upside-down reading.  Inspired by the Perl
version called Acme::Text::Viceversa.

=head1 SUBROUTINES

=head2 upsidedown

=begin code :lang<raku>

  say upsidedown "The quick brown fox jumps over the lazy dog";
  # ɓop ʎzɐꞁ ǝɥʇ ɹǝʌo sdɯnſ̣ xoɟ uʍoɹq ʞɔᴉnb ǝɥ⊥

  say upsidedown "ɓop ʎzɐꞁ ǝɥʇ ɹǝʌo sdɯnſ̣ xoɟ uʍoɹq ʞɔᴉnb ǝɥ⊥";
  # The quick brown fox jumps over the lazy dog

=end code

Return the string that allows reading of the given ASCII string upside-down,
and vice-versa.

=head2 uʍopǝpᴉsdn

  say uʍopǝpᴉsdn "ɓop ʎzɐꞁ ǝɥʇ ɹǝʌo sdɯnſ̣ xoɟ uʍoɹq ʞɔᴉnb ǝɥ⊥";
  # The quick brown fox jumps over the lazy dog

  say uʍopǝpᴉsdn "The quick brown fox jumps over the lazy dog";
  # ɓop ʎzɐꞁ ǝɥʇ ɹǝʌo sdɯnſ̣ xoɟ uʍoɹq ʞɔᴉnb ǝɥ⊥

Return the string that allows normal reading of a previously upside-downed
string, and vice-versa.  Basically a fun alias for C<upsidedown>.

=head1 COMMAND LINE INTERFACE

This module also installs a C<ud> script for easy upsidedowning of text.

When called without any parameters, it will read from STDIN and print the
upsidedowned text on STDOUT.

When called with a single parameter that indicates an existing file, then
it will read that file and print the upsidedowned text on STDOUT.

In all other cases, the command line parameters will be joined together with
a space, and then printed upsidedowned on STDOUT.

=head1 AUTHOR

Elizabeth Mattijsen <liz@raku.rocks>

=head1 COPYRIGHT AND LICENSE

Original Perl version of Acme::Text::Viceversa: Copyright 2019 吉田勇気,
Raku re-imagining: Copyright 2019, 2021 Elizabeth Mattijsen

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

=end pod

# vim: expandtab shiftwidth=4
