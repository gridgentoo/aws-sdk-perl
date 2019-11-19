
package Paws::Route53::CreateReusableDelegationSetResponse;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::Route53::Types qw/Route53_DelegationSet/;
  has DelegationSet => (is => 'ro', isa => Route53_DelegationSet, required => 1);
  has Location => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DelegationSet' => {
                                    'class' => 'Paws::Route53::DelegationSet',
                                    'type' => 'Route53_DelegationSet'
                                  },
               'Location' => {
                               'type' => 'Str'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'DelegationSet' => 1,
                    'Location' => 1
                  },
  'ParamInHeader' => {
                       'Location' => 'Location'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::CreateReusableDelegationSetResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DelegationSet => Route53_DelegationSet

A complex type that contains name server information.



=head2 B<REQUIRED> Location => Str

The unique URL representing the new reusable delegation set.




=cut

