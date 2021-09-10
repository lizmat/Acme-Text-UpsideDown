use v6.*;
unit module Acme::Text::UpsideDown:ver<0.0.5>:auth<zef:lizmat>;

my constant $rot000 = Q｢!"&'(),.12345679;<>?ABCDEFGJKLMPQRTUVWY][^_`abcdefghijklmnpqrtuvwy{}｣;

my constant $rot180 = Q｢¡„⅋͵)(‘˙⇂ᘔε⇁⃓ᔕ9L6⋅̕><¿∀ᗺↃpƎℲ⅁ᒋ丬ᒣWԀΌȢ⊥ᑎΛM⅄[]‿‾ ̖ɐqɔpǝɟɓɥᴉſ̣ʞꞁɯudbɹʇnʌʍʎ}{｣;

sub upsidedown(Str:D $string) is export {
    $string.lines.map( *.trans( $rot000 => $rot180 ).flip ).reverse.join("\n")
}
sub uʍopǝpᴉsdn(Str:D $string) is export {
    $string.lines.map( *.trans( $rot180 => $rot000 ).flip ).reverse.join("\n")
}

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

  say upsidedown "The quick brown fox jumps over the lazy dog";
  # ɓop ʎzɐꞁ ǝɥʇ ɹǝʌo sdɯnſ̣ xoɟ uʍoɹq ʞɔᴉnb ǝɥ⊥

Return the string that allows reading of the given ASCII string upside-down.

=head2 uʍopǝpᴉsdn

  say uʍopǝpᴉsdn "ɓop ʎzɐꞁ ǝɥʇ ɹǝʌo sdɯnſ̣ xoɟ uʍoɹq ʞɔᴉnb ǝɥ⊥";
  # The quick brown fox jumps over the lazy Dog

Return the string that allows normal reading of a previously upside-downed
string.

=head1 AUTHOR

Elizabeth Mattijsen <liz@raku.rocks>

=head1 COPYRIGHT AND LICENSE

Original Perl version of Acme::Text::Viceversa: Copyright 2019 吉田勇気,
Raku re-imagining: Copyright 2019, 2021 Elizabeth Mattijsen

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

=end pod
