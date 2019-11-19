# Generated from json/callargs_class.tt

package Paws::CognitoIdp::AdminDeleteUserAttributes;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::CognitoIdp::Types qw//;
  has UserAttributeNames => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1, predicate => 1);
  has Username => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has UserPoolId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'AdminDeleteUserAttributes');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CognitoIdp::AdminDeleteUserAttributesResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'UserPoolId' => 1,
                    'UserAttributeNames' => 1,
                    'Username' => 1
                  },
  'types' => {
               'Username' => {
                               'type' => 'Str'
                             },
               'UserAttributeNames' => {
                                         'type' => 'ArrayRef[Str|Undef]'
                                       },
               'UserPoolId' => {
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

Paws::CognitoIdp::AdminDeleteUserAttributes - Arguments for method AdminDeleteUserAttributes on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AdminDeleteUserAttributes on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method AdminDeleteUserAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AdminDeleteUserAttributes.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $AdminDeleteUserAttributesResponse =
      $cognito -idp->AdminDeleteUserAttributes(
      UserAttributeNames => [
        'MyAttributeNameType', ...    # min: 1, max: 32
      ],
      UserPoolId => 'MyUserPoolIdType',
      Username   => 'MyUsernameType',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-idp/AdminDeleteUserAttributes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> UserAttributeNames => ArrayRef[Str|Undef]

An array of strings representing the user attribute names you wish to
delete.

For custom attributes, you must prepend the C<custom:> prefix to the
attribute name.



=head2 B<REQUIRED> Username => Str

The user name of the user from which you would like to delete
attributes.



=head2 B<REQUIRED> UserPoolId => Str

The user pool ID for the user pool where you want to delete user
attributes.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AdminDeleteUserAttributes in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

