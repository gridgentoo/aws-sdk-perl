package Paws::ImageBuilder::AmiDistributionConfiguration;
  use Moose;
  has AmiTags => (is => 'ro', isa => 'Paws::ImageBuilder::TagMap', request_name => 'amiTags', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has LaunchPermission => (is => 'ro', isa => 'Paws::ImageBuilder::LaunchPermissionConfiguration', request_name => 'launchPermission', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::AmiDistributionConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ImageBuilder::AmiDistributionConfiguration object:

  $service_obj->Method(Att1 => { AmiTags => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ImageBuilder::AmiDistributionConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->AmiTags

=head1 DESCRIPTION

Define and configure the output AMIs of the pipeline.

=head1 ATTRIBUTES


=head2 AmiTags => L<Paws::ImageBuilder::TagMap>

  The tags to apply to AMIs distributed to this Region.


=head2 Description => Str

  The description of the distribution configuration.


=head2 LaunchPermission => L<Paws::ImageBuilder::LaunchPermissionConfiguration>

  Launch permissions can be used to configure which AWS accounts can use
the AMI to launch instances.


=head2 Name => Str

  The name of the distribution configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

