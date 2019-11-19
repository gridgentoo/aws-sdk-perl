
package Paws::WorkLink::DescribeIdentityProviderConfigurationResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WorkLink::Types qw//;
  has IdentityProviderSamlMetadata => (is => 'ro', isa => Str);
  has IdentityProviderType => (is => 'ro', isa => Str);
  has ServiceProviderSamlMetadata => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ServiceProviderSamlMetadata' => {
                                                  'type' => 'Str'
                                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'IdentityProviderType' => {
                                           'type' => 'Str'
                                         },
               'IdentityProviderSamlMetadata' => {
                                                   'type' => 'Str'
                                                 }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkLink::DescribeIdentityProviderConfigurationResponse

=head1 ATTRIBUTES


=head2 IdentityProviderSamlMetadata => Str

The SAML metadata document provided by the userE<rsquo>s identity
provider.


=head2 IdentityProviderType => Str

The type of identity provider.

Valid values are: C<"SAML">
=head2 ServiceProviderSamlMetadata => Str

The SAML metadata document uploaded to the userE<rsquo>s identity
provider.


=head2 _request_id => Str


=cut

