unit class Data::DPath;

method hello {
    return 42;
}

=begin pod

=head1 NAME

Data::DPath - DPath is not XPath!

=head1 SYNOPSIS

=begin code :lang<raku>

use Data::DPath;

=end code

=head1 DESCRIPTION

Data::DPath is a re-implementation of the Perl module
I<Data::DPath>.

WATCH OUT: The early versions are ONLY to get the Raku/Zef/Github
infrastructure working, there is no real code yet. If you read this
sentence then this module is in its early stages of development and
should not be used in any way except for contributing.

=head1 AUTHOR

Steffen Schwigon <ss5@renormalist.net>

=head1 COPYRIGHT AND LICENSE

Copyright 2024 Steffen Schwigon

This library is free software; you can redistribute it and/or modify
it under the Artistic License 2.0.

=head1 CAVEATS

This module is not a 1:1 port of the Perl version. So there is
potential for subtly different behaviour.

=head2 Different dpath parsing

First of all, it utilizes grammars for the DPaths instead of
Text::Balanced. This means it could miss dpath constructs that worked
before just because of Text::Balanced. Please report them so the
grammar can be extended.

=head2 Different code

Besides the already discussed dpath parsing the remaining code will
start out as port from Perl but will be evolve independently. It's
quite possible that this eventually means a different feature set.

=head2 Different filter expressions

In the Perl version filter expressions were actually Perl
expressions, protected by I<Safe.pm>. Here another expression language
will be used, not sure yet, what exactly, but obviously not Perl.

=head2 Feature differences

The Perl version provides some Perl-specific features,
e.g. references into a data structure. It is not yet clear how these
will work out in Raku.

=end pod
