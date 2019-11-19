# Generated from json/callresult_class.tt

package Paws::Route53Resolver::DeleteResolverEndpointResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Route53Resolver::Types qw/Route53Resolver_ResolverEndpoint/;
  has ResolverEndpoint => (is => 'ro', isa => Route53Resolver_ResolverEndpoint);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResolverEndpoint' => {
                                       'class' => 'Paws::Route53Resolver::ResolverEndpoint',
                                       'type' => 'Route53Resolver_ResolverEndpoint'
                                     },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::DeleteResolverEndpointResponse

=head1 ATTRIBUTES


=head2 ResolverEndpoint => Route53Resolver_ResolverEndpoint

Information about the C<DeleteResolverEndpoint> request, including the
status of the request.


=head2 _request_id => Str


=cut

1;