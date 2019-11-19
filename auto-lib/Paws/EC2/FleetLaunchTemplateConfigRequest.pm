package Paws::EC2::FleetLaunchTemplateConfigRequest;
  use Moo;  use Types::Standard qw/ArrayRef/;
  use Paws::EC2::Types qw/EC2_FleetLaunchTemplateSpecificationRequest EC2_FleetLaunchTemplateOverridesRequest/;
  has LaunchTemplateSpecification => (is => 'ro', isa => EC2_FleetLaunchTemplateSpecificationRequest);
  has Overrides => (is => 'ro', isa => ArrayRef[EC2_FleetLaunchTemplateOverridesRequest]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LaunchTemplateSpecification' => {
                                                  'class' => 'Paws::EC2::FleetLaunchTemplateSpecificationRequest',
                                                  'type' => 'EC2_FleetLaunchTemplateSpecificationRequest'
                                                },
               'Overrides' => {
                                'type' => 'ArrayRef[EC2_FleetLaunchTemplateOverridesRequest]',
                                'class' => 'Paws::EC2::FleetLaunchTemplateOverridesRequest'
                              }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::FleetLaunchTemplateConfigRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::FleetLaunchTemplateConfigRequest object:

  $service_obj->Method(Att1 => { LaunchTemplateSpecification => $value, ..., Overrides => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::FleetLaunchTemplateConfigRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->LaunchTemplateSpecification

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 LaunchTemplateSpecification => EC2_FleetLaunchTemplateSpecificationRequest

  The launch template to use. You must specify either the launch template
ID or launch template name in the request.


=head2 Overrides => ArrayRef[EC2_FleetLaunchTemplateOverridesRequest]

  Any parameters that you specify override the same parameters in the
launch template.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
