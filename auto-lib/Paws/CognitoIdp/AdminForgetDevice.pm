# Generated from json/callargs_class.tt

package Paws::CognitoIdp::AdminForgetDevice;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CognitoIdp::Types qw//;
  has DeviceKey => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Username => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has UserPoolId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'AdminForgetDevice');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'DeviceKey' => 1,
                    'Username' => 1,
                    'UserPoolId' => 1
                  },
  'types' => {
               'UserPoolId' => {
                                 'type' => 'Str'
                               },
               'DeviceKey' => {
                                'type' => 'Str'
                              },
               'Username' => {
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

Paws::CognitoIdp::AdminForgetDevice - Arguments for method AdminForgetDevice on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AdminForgetDevice on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method AdminForgetDevice.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AdminForgetDevice.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    $cognito -idp->AdminForgetDevice(
      DeviceKey  => 'MyDeviceKeyType',
      UserPoolId => 'MyUserPoolIdType',
      Username   => 'MyUsernameType',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-idp/AdminForgetDevice>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeviceKey => Str

The device key.



=head2 B<REQUIRED> Username => Str

The user name.



=head2 B<REQUIRED> UserPoolId => Str

The user pool ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AdminForgetDevice in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

