[![Actions Status](https://github.com/renormalist/raku-Data-DPath/actions/workflows/test.yml/badge.svg)](https://github.com/renormalist/raku-Data-DPath/actions)

NAME
====

Data::DPath - DPath is not XPath!

SYNOPSIS
========

```raku
use Data::DPath;
```

DESCRIPTION
===========

Data::DPath is a re-implementation of the Perl module *Data::DPath*.

WATCH OUT: The early versions are ONLY to get the Raku/Zef/Github infrastructure working, there is no real code yet. If you read this sentence then this module is in its early stages of development and should not be used in any way except for contributing.

AUTHOR
======

Steffen Schwigon <ss5@renormalist.net>

COPYRIGHT AND LICENSE
=====================

Copyright 2024 Steffen Schwigon

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

CAVEATS
=======

This module is not a 1:1 port of the Perl version. So there is potential for subtly different behaviour.

Different dpath parsing
-----------------------

First of all, it utilizes grammars for the DPaths instead of Text::Balanced. This means it could miss dpath constructs that worked before just because of Text::Balanced. Please report them so the grammar can be extended.

Different code
--------------

Besides the already discussed dpath parsing the remaining code will start out as port from Perl but will be evolve independently. It's quite possible that this eventually means a different feature set.

Different filter expressions
----------------------------

In the Perl version filter expressions were actually Perl expressions, protected by *Safe.pm*. Here another expression language will be used, not sure yet, what exactly, but obviously not Perl.

Feature differences
-------------------

The Perl version provides some Perl-specific features, e.g. references into a data structure. It is not yet clear how these will work out in Raku.

