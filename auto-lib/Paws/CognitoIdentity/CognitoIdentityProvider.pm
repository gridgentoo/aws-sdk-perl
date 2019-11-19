# Generated from default/object.tt
package Paws::CognitoIdentity::CognitoIdentityProvider;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::CognitoIdentity::Types qw//;
  has ClientId => (is => 'ro', isa => Str);
  has ProviderName => (is => 'ro', isa => Str);
  has ServerSideTokenCheck => (is => 'ro', isa => Bool);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ProviderName' => {
                                   'type' => 'Str'
                                 },
               'ClientId' => {
                               'type' => 'Str'
                             },
               'ServerSideTokenCheck' => {
                                           'type' => 'Bool'
                                         }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdentity::CognitoIdentityProvider

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdentity::CognitoIdentityProvider object:

  $service_obj->Method(Att1 => { ClientId => $value, ..., ServerSideTokenCheck => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdentity::CognitoIdentityProvider object:

  $result = $service_obj->Method(...);
  $result->Att1->ClientId

=head1 DESCRIPTION

A provider representing an Amazon Cognito user pool and its client ID.

=head1 ATTRIBUTES


=head2 ClientId => Str

  The client ID for the Amazon Cognito user pool.


=head2 ProviderName => Str

  The provider name for an Amazon Cognito user pool. For example,
C<cognito-idp.us-east-1.amazonaws.com/us-east-1_123456789>.


=head2 ServerSideTokenCheck => Bool

  TRUE if server-side token validation is enabled for the identity
providerE<rsquo>s token.

Once you set C<ServerSideTokenCheck> to TRUE for an identity pool, that
identity pool will check with the integrated user pools to make sure
that the user has not been globally signed out or deleted before the
identity pool provides an OIDC token or AWS credentials for the user.

If the user is signed out or deleted, the identity pool will return a
400 Not Authorized error.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdentity>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

