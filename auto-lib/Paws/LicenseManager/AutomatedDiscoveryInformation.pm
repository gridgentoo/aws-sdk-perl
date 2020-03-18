package Paws::LicenseManager::AutomatedDiscoveryInformation;
  use Moose;
  has LastRunTime => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::AutomatedDiscoveryInformation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LicenseManager::AutomatedDiscoveryInformation object:

  $service_obj->Method(Att1 => { LastRunTime => $value, ..., LastRunTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LicenseManager::AutomatedDiscoveryInformation object:

  $result = $service_obj->Method(...);
  $result->Att1->LastRunTime

=head1 DESCRIPTION

Describes automated discovery.

=head1 ATTRIBUTES


=head2 LastRunTime => Str

  Time that automated discovery last ran.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LicenseManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

