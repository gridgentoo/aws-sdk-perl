# Generated from json/callargs_class.tt

package Paws::CognitoIdp::ForgetDevice;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CognitoIdp::Types qw//;
  has AccessToken => (is => 'ro', isa => Str, predicate => 1);
  has DeviceKey => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ForgetDevice');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AccessToken' => {
                                  'type' => 'Str'
                                },
               'DeviceKey' => {
                                'type' => 'Str'
                              }
             },
  'IsRequired' => {
                    'DeviceKey' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ForgetDevice - Arguments for method ForgetDevice on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ForgetDevice on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method ForgetDevice.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ForgetDevice.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    $cognito -idp->ForgetDevice(
      DeviceKey   => 'MyDeviceKeyType',
      AccessToken => 'MyTokenModelType',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-idp/ForgetDevice>

=head1 ATTRIBUTES


=head2 AccessToken => Str

The access token for the forgotten device request.



=head2 B<REQUIRED> DeviceKey => Str

The device key.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ForgetDevice in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

