
package Paws::IoT::ListAuthorizersResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoT::Types qw/IoT_AuthorizerSummary/;
  has Authorizers => (is => 'ro', isa => ArrayRef[IoT_AuthorizerSummary]);
  has NextMarker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextMarker' => {
                                 'type' => 'Str'
                               },
               'Authorizers' => {
                                  'type' => 'ArrayRef[IoT_AuthorizerSummary]',
                                  'class' => 'Paws::IoT::AuthorizerSummary'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'NextMarker' => 'nextMarker',
                       'Authorizers' => 'authorizers'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListAuthorizersResponse

=head1 ATTRIBUTES


=head2 Authorizers => ArrayRef[IoT_AuthorizerSummary]

The authorizers.


=head2 NextMarker => Str

A marker used to get the next set of results.


=head2 _request_id => Str


=cut

