unit class Data::DPath::Step;

has $.kind;
has $.part;
has $.filter;

=begin pod

=head1 ABSTRACT

B<WARNING/TODO: OLD DOCUMENTATION FROM ORIGINAL PERL MODULE.>

Abstraction for a single Step through a Path

=head1 ABOUT

Take a string description, parse it, provide frontend methods.

=head1 PUBLIC METHODS

=head2 new ( %args )

Constructor; creates instance.

Args:

=over 4

=item give_references

Default 0. If set to true value then results are references to the
matched points in the data structure.

=back

=head2 match( $data )

Returns an array of all values in C<$data> that match the Path object.

=head2 matchr( $data )

Returns an array ref of all values in C<$data> that match the Path object.

=head1 INTERNAL METHODS

=head2 op_match( $self, $data )

This sub/method is bound as the overloading function for C<~~>.

=head2 quoted

Checks whether a path part starts with quotes.

=head2 unquote

Removes surrounding quotes.

=head2 unescape

Converts backslashed characters into their non-backslashed form.

=head2 _build__steps

This method is essentially the DPath parser as it tokenizes the path
into single steps whose later execution is the base functionality of
the whole DPath module.

=head2 path

Attribute / accessor.

=head2 _steps

Attribute / accessor.

=head2 give_references

Attribute / accessor.

=head1 aliased classes

That's just to make Pod::Coverage happy which does not handle aliased
modules.

=head2 Context

=head2 Point

=head2 Step

=end pod
