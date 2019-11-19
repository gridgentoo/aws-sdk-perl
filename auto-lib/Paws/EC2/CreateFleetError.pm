package Paws::EC2::CreateFleetError;
  use Moo;  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_LaunchTemplateAndOverridesResponse/;
  has ErrorCode => (is => 'ro', isa => Str);
  has ErrorMessage => (is => 'ro', isa => Str);
  has LaunchTemplateAndOverrides => (is => 'ro', isa => EC2_LaunchTemplateAndOverridesResponse);
  has Lifecycle => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Lifecycle' => 'lifecycle',
                       'ErrorMessage' => 'errorMessage',
                       'ErrorCode' => 'errorCode',
                       'LaunchTemplateAndOverrides' => 'launchTemplateAndOverrides'
                     },
  'types' => {
               'Lifecycle' => {
                                'type' => 'Str'
                              },
               'LaunchTemplateAndOverrides' => {
                                                 'class' => 'Paws::EC2::LaunchTemplateAndOverridesResponse',
                                                 'type' => 'EC2_LaunchTemplateAndOverridesResponse'
                                               },
               'ErrorCode' => {
                                'type' => 'Str'
                              },
               'ErrorMessage' => {
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

Paws::EC2::CreateFleetError

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::CreateFleetError object:

  $service_obj->Method(Att1 => { ErrorCode => $value, ..., Lifecycle => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::CreateFleetError object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorCode

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ErrorCode => Str

  The error code that indicates why the instance could not be launched.
For more information about error codes, see Error Codes
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/errors-overview.html.html).


=head2 ErrorMessage => Str

  The error message that describes why the instance could not be
launched. For more information about error messages, see ee Error Codes
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/errors-overview.html.html).


=head2 LaunchTemplateAndOverrides => EC2_LaunchTemplateAndOverridesResponse

  The launch templates and overrides that were used for launching the
instances. Any parameters that you specify in the Overrides override
the same parameters in the launch template.


=head2 Lifecycle => Str

  Indicates if the instance that could not be launched was a Spot
Instance or On-Demand Instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
