unit class Data::DPath::Attrs;

enum reftype <HASH ARRAY SCALAR>;

has $.idx;
has $.p; # current point

=begin pod

=head1 ABSTRACT

B<WARNING/TODO: OLD DOCUMENTATION FROM ORIGINAL PERL MODULE.>

Abstraction for internal attributes attached to a point

=head1 INTERNAL METHODS

=head2 new

Constructor.

=head2 key

Attribute / accessor.

The key actual hash key under which the point is located in case it's
the value of a hash entry.

=head2 idx

Attribute / accessor.

The key actual array index under which the point is located in case it's
the value of a array entry.

=end pod
