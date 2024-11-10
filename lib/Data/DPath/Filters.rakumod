unit class Data::DPath::Filters;

enum reftype <HASH ARRAY SCALAR>;

has $.idx;
has $.p; # current point

=begin pod

=head1 ABSTRACT

B<WARNING/TODO: OLD DOCUMENTATION FROM ORIGINAL PERL MODULE.>

Magic functions available inside filter conditions

=head1 API METHODS

=head2 affe

Mysterious test function. Will vanish. Soon. Or will it really? No,
probably not. I like it. :-)

Returns true if the value eq "affe".

=head2 idx

Returns the current index inside array elements.

Please note that the current matching elements might not be in a
defined order if resulting from anything else than arrays.

=head2 size

Returns the size of the current element. If it is an array ref it
returns the number of elements, if it is a hash ref it returns number of keys,
if it is a scalar it returns 1, everything else returns -1.

=head2 key

If it is a hashref returns the key under which the current element is
associated as value. Else it returns undef.

This gives the key() function kind of a "look back" behaviour because
the associated point is already after that key.

=head2 value

Returns the value of the current element.

=head2 isa

Frontend to UNIVERSAL::isa. True if the current element is_a given
class.

=head2 reftype

Frontend to Scalar::Util::reftype.

Returns Scalar::Util::reftype of current element $_. With this you can
do comparison by yourself with C<eq>, C<=~>, C<~~> or whatever in
filter expressions.

=head2 is_reftype($EXPECTED_TYPE)

Frontend to Scalar::Util::reftype.

Checks whether Scalar::Util::reftype of current element $_ equals the
provided argument $EXPECTED_TYPE and returns true/false.

=end pod

# sub parent, Eltern-Knoten liefern
# nextchild, von parent und mir selbst
# previous child
# "." als aktueller Knoten, kind of "no-op", daran aber Filter verknüpfbar, löst //.[filter] und /.[filter]

# IDEA: functions that return always true, but track stack of values, eg. last taken index
#
#    //AAA/*[ _push_idx ]/CCC[ condition ]/../../*[ idx == pop_idx + 1]/
#
# This would take a way down to a filtered CCC, then back again and take the next neighbor.
