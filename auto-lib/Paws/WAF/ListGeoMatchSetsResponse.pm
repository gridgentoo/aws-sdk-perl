# Generated from json/callresult_class.tt

package Paws::WAF::ListGeoMatchSetsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WAF::Types qw/WAF_GeoMatchSetSummary/;
  has GeoMatchSets => (is => 'ro', isa => ArrayRef[WAF_GeoMatchSetSummary]);
  has NextMarker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextMarker' => {
                                 'type' => 'Str'
                               },
               'GeoMatchSets' => {
                                   'class' => 'Paws::WAF::GeoMatchSetSummary',
                                   'type' => 'ArrayRef[WAF_GeoMatchSetSummary]'
                                 }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WAF::ListGeoMatchSetsResponse

=head1 ATTRIBUTES


=head2 GeoMatchSets => ArrayRef[WAF_GeoMatchSetSummary]

An array of GeoMatchSetSummary objects.


=head2 NextMarker => Str

If you have more C<GeoMatchSet> objects than the number that you
specified for C<Limit> in the request, the response includes a
C<NextMarker> value. To list more C<GeoMatchSet> objects, submit
another C<ListGeoMatchSets> request, and specify the C<NextMarker>
value from the response in the C<NextMarker> value in the next request.


=head2 _request_id => Str


=cut

1;