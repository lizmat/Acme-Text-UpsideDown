NAME
====

Acme::Text::UpsideDown - provide logic to turn ASCII text upside-down

SYNOPSIS
========

```perl6
  use Acme::Text::UpsideDown;

  say upsidedown "The quick brown fox jumps over the lazy dog";
  # ɓop ʎzɐꞁ ǝɥʇ ɹǝʌo sdɯnſ̣ xoɟ uʍoɹq ʞɔᴉnb ǝɥ⊥

  say uʍopǝpᴉsdn "ɓop ʎzɐꞁ ǝɥʇ ɹǝʌo sdɯnſ̣ xoɟ uʍoɹq ʞɔᴉnb ǝɥ⊥";
  # The quick brown fox jumps over the lazy Dog
```

DESCRIPTION
===========

Acme::Text::UpsideDown provides two subroutines that can be used to create strings from ASCII texts for upside-down reading. Inspired by the Perl version called Acme::Text::Viceversa.

SUBROUTINES
===========

upsidedown
----------

    say upsidedown "The quick brown fox jumps over the lazy dog";
    # ɓop ʎzɐꞁ ǝɥʇ ɹǝʌo sdɯnſ̣ xoɟ uʍoɹq ʞɔᴉnb ǝɥ⊥

Return the string that allows reading of the given ASCII string upside-down.

uʍopǝpᴉsdn
----------

    say uʍopǝpᴉsdn "ɓop ʎzɐꞁ ǝɥʇ ɹǝʌo sdɯnſ̣ xoɟ uʍoɹq ʞɔᴉnb ǝɥ⊥";
    # The quick brown fox jumps over the lazy Dog

Return the string that allows normal reading of a previously upside-downed string.

AUTHOR
======

Elizabeth Mattijsen <liz@wenzperl.nl>

COPYRIGHT AND LICENSE
=====================

Original Perl version of Acme::Text::Viceversa: Copyright 2019 吉田勇気, Raku re-imagining: Copyright 2019 Elizabeth Mattijsen

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

