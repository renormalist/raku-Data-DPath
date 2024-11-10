unit class Data::DPath::Point;

has $.parent;
has $.attrs;
has $.ref;

=begin pod

=head1 ABSTRACT

B<WARNING/TODO: OLD DOCUMENTATION FROM ORIGINAL PERL MODULE.>

Abstraction for a single reference (a "point") in the datastructure

=head1 ABOUT

Intermediate steps during execution are lists of currently covered
references in the data structure, i.e., lists of such B<Point>s. The
remaining B<Point>s at the end just need to be dereferenced and form
the result.

=head1 INTERNAL METHODS

=head2 new

Constructor.

=head2 parent

Attribute / accessor.

=head2 ref

Attribute / accessor.

=head2 attrs

Attribute / accessor.

=end pod
