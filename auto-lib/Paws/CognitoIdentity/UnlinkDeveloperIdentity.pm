# Generated from json/callargs_class.tt

package Paws::CognitoIdentity::UnlinkDeveloperIdentity;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CognitoIdentity::Types qw//;
  has DeveloperProviderName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DeveloperUserIdentifier => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has IdentityId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has IdentityPoolId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UnlinkDeveloperIdentity');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'DeveloperUserIdentifier' => 1,
                    'IdentityPoolId' => 1,
                    'IdentityId' => 1,
                    'DeveloperProviderName' => 1
                  },
  'types' => {
               'DeveloperProviderName' => {
                                            'type' => 'Str'
                                          },
               'IdentityId' => {
                                 'type' => 'Str'
                               },
               'IdentityPoolId' => {
                                     'type' => 'Str'
                                   },
               'DeveloperUserIdentifier' => {
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

Paws::CognitoIdentity::UnlinkDeveloperIdentity - Arguments for method UnlinkDeveloperIdentity on L<Paws::CognitoIdentity>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UnlinkDeveloperIdentity on the
L<Amazon Cognito Identity|Paws::CognitoIdentity> service. Use the attributes of this class
as arguments to method UnlinkDeveloperIdentity.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UnlinkDeveloperIdentity.

=head1 SYNOPSIS

    my $cognito-identity = Paws->service('CognitoIdentity');
    $cognito -identity->UnlinkDeveloperIdentity(
      DeveloperProviderName   => 'MyDeveloperProviderName',
      DeveloperUserIdentifier => 'MyDeveloperUserIdentifier',
      IdentityId              => 'MyIdentityId',
      IdentityPoolId          => 'MyIdentityPoolId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-identity/UnlinkDeveloperIdentity>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeveloperProviderName => Str

The "domain" by which Cognito will refer to your users.



=head2 B<REQUIRED> DeveloperUserIdentifier => Str

A unique ID used by your backend authentication process to identify a
user.



=head2 B<REQUIRED> IdentityId => Str

A unique identifier in the format REGION:GUID.



=head2 B<REQUIRED> IdentityPoolId => Str

An identity pool ID in the format REGION:GUID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UnlinkDeveloperIdentity in L<Paws::CognitoIdentity>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

