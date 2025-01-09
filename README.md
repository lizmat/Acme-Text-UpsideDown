[![Actions Status](https://github.com/lizmat/Acme-Text-UpsideDown/actions/workflows/linux.yml/badge.svg)](https://github.com/lizmat/Acme-Text-UpsideDown/actions) [![Actions Status](https://github.com/lizmat/Acme-Text-UpsideDown/actions/workflows/macos.yml/badge.svg)](https://github.com/lizmat/Acme-Text-UpsideDown/actions) [![Actions Status](https://github.com/lizmat/Acme-Text-UpsideDown/actions/workflows/windows.yml/badge.svg)](https://github.com/lizmat/Acme-Text-UpsideDown/actions)

NAME
====

Acme::Text::UpsideDown - provide logic to turn ASCII text upside-down

SYNOPSIS
========

```raku
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

```raku
say upsidedown "The quick brown fox jumps over the lazy dog";
# ɓop ʎzɐꞁ ǝɥʇ ɹǝʌo sdɯnſ̣ xoɟ uʍoɹq ʞɔᴉnb ǝɥ⊥

say upsidedown "ɓop ʎzɐꞁ ǝɥʇ ɹǝʌo sdɯnſ̣ xoɟ uʍoɹq ʞɔᴉnb ǝɥ⊥";
# The quick brown fox jumps over the lazy dog
```

Return the string that allows reading of the given ASCII string upside-down, and vice-versa.

uʍopǝpᴉsdn
----------

```raku
say uʍopǝpᴉsdn "ɓop ʎzɐꞁ ǝɥʇ ɹǝʌo sdɯnſ̣ xoɟ uʍoɹq ʞɔᴉnb ǝɥ⊥";
# The quick brown fox jumps over the lazy dog

say uʍopǝpᴉsdn "The quick brown fox jumps over the lazy dog";
# ɓop ʎzɐꞁ ǝɥʇ ɹǝʌo sdɯnſ̣ xoɟ uʍoɹq ʞɔᴉnb ǝɥ⊥
```

Return the string that allows normal reading of a previously upside-downed string, and vice-versa. Basically a fun alias for `upsidedown`.

COMMAND LINE INTERFACE
======================

This module also installs a `ud` script for easy upsidedowning of text.

When called without any parameters, it will read from STDIN and print the upsidedowned text on STDOUT.

When called with a single parameter that indicates an existing file, then it will read that file and print the upsidedowned text on STDOUT.

In all other cases, the command line parameters will be joined together with a space, and then printed upsidedowned on STDOUT.

AUTHOR
======

Elizabeth Mattijsen <liz@raku.rocks>

Source can be located at: https://github.com/lizmat/Acme-Text-UpsideDown . Comments and Pull Requests are welcome.

If you like this module, or what I’m doing more generally, committing to a [small sponsorship](https://github.com/sponsors/lizmat/) would mean a great deal to me!

COPYRIGHT AND LICENSE
=====================

Original Perl version of Acme::Text::Viceversa: Copyright 2019 吉田勇気, Raku re-imagining: Copyright 2019, 2021, 2024, 2025 Elizabeth Mattijsen

Some additional character mappings taken from [https://github.com/mcsnolte/Text-UpsideDown](https://github.com/mcsnolte/Text-UpsideDown).

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

