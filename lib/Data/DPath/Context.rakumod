unit class Data::DPath::Context;

use Data::DPath::Point;
use Data::DPath::Attrs;
use Data::DPath::Filters;

has $.current_points;
has $.give_references;

enum stepkinds_and_reftype <HASH ARRAY SCALAR
                            ROOT ANYWHERE KEY ANYSTEP NOSTEP
                            PARENT ANCESTOR ANCESTOR_OR_SELF>;

=begin pod

=head1 ABSTRACT

B<WARNING/TODO: OLD DOCUMENTATION FROM ORIGINAL PERL MODULE.>

Abstraction for a current context that enables incremental searches

=head1 API METHODS

=head2 new ( %args )

Constructor; creates instance.

Args:

=over 4

=item give_references

Default 0. If set to true value then results are references to the
matched points in the data structure.

=back

=head2 match( $dpath )

Return array of all data that match the given DPath.

=head2 matchr( $dpath )

Return array ref of all data that match the given DPath.

=head2 isearch( $path_str )

Searches a path relative to current context and returns an iterator.
See L<Iterator style|Data::DPath/"Iterator style"> for usage.

=head2 ref()

It returns the reference to the actual data from the current context's
first element. This mostly makes sense on contexts returned by
iterators as there is only one point there.

(Having the reference theoretically allows you to even change the data
on this point. It's not yet clear what impact this has to currently
active iterators, which B<should> still return the original data but
that's not yet tested. So don't rely on that behaviour.)

=head2 deref()

This is one dereference step on top of F<ref()>. It gives you the
actual data found. Most of the time you want this.

=head2 first_point

On a current context consisting on a set of points it returns the
first point. This makes most sense with Iterator style API when the
current iterator contains exactly one point.

=head2 all_points

On a current context consisting on a set of points it returns all
those. This method is a functional complement to F<first_point>.

=head1 UTILITY SUBS/METHODS

=head2 _all

Returns all values covered by current context.

If C<give_references> is set to true value then results are references
to the matched points in the data structure.

=head2 _search( $dpath )

Return new context for a DPath relative to current context.

=head2 _filter_points

Evaluates the filter condition in brackets. It differenciates between
simple integers, which are taken as array index, and all other
conditions, which are taken as evaled perl expression in a grep like
expression onto the set of points found by current step.

=head2 current_points

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
