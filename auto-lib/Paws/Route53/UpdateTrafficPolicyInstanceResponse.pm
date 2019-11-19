
package Paws::Route53::UpdateTrafficPolicyInstanceResponse;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::Route53::Types qw/Route53_TrafficPolicyInstance/;
  has TrafficPolicyInstance => (is => 'ro', isa => Route53_TrafficPolicyInstance, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TrafficPolicyInstance' => {
                                            'type' => 'Route53_TrafficPolicyInstance',
                                            'class' => 'Paws::Route53::TrafficPolicyInstance'
                                          }
             },
  'IsRequired' => {
                    'TrafficPolicyInstance' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::UpdateTrafficPolicyInstanceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> TrafficPolicyInstance => Route53_TrafficPolicyInstance

A complex type that contains settings for the updated traffic policy
instance.




=cut

