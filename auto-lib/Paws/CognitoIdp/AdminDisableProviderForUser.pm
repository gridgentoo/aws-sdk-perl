# Generated from json/callargs_class.tt

package Paws::CognitoIdp::AdminDisableProviderForUser;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CognitoIdp::Types qw/CognitoIdp_ProviderUserIdentifierType/;
  has User => (is => 'ro', isa => CognitoIdp_ProviderUserIdentifierType, required => 1, predicate => 1);
  has UserPoolId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'AdminDisableProviderForUser');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CognitoIdp::AdminDisableProviderForUserResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'UserPoolId' => 1,
                    'User' => 1
                  },
  'types' => {
               'UserPoolId' => {
                                 'type' => 'Str'
                               },
               'User' => {
                           'class' => 'Paws::CognitoIdp::ProviderUserIdentifierType',
                           'type' => 'CognitoIdp_ProviderUserIdentifierType'
                         }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::AdminDisableProviderForUser - Arguments for method AdminDisableProviderForUser on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AdminDisableProviderForUser on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method AdminDisableProviderForUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AdminDisableProviderForUser.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $AdminDisableProviderForUserResponse =
      $cognito -idp->AdminDisableProviderForUser(
      User => {
        ProviderAttributeName  => 'MyStringType',    # OPTIONAL
        ProviderAttributeValue => 'MyStringType',    # OPTIONAL
        ProviderName => 'MyProviderNameType',        # min: 1, max: 32; OPTIONAL
      },
      UserPoolId => 'MyStringType',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-idp/AdminDisableProviderForUser>

=head1 ATTRIBUTES


=head2 B<REQUIRED> User => CognitoIdp_ProviderUserIdentifierType

The user to be disabled.



=head2 B<REQUIRED> UserPoolId => Str

The user pool ID for the user pool.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AdminDisableProviderForUser in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

