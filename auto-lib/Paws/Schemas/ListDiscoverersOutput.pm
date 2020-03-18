package Paws::Schemas::ListDiscoverersOutput;
  use Moose;
  has Discoverers => (is => 'ro', isa => 'ArrayRef[Paws::Schemas::DiscovererSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Schemas::ListDiscoverersOutput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Schemas::ListDiscoverersOutput object:

  $service_obj->Method(Att1 => { Discoverers => $value, ..., NextToken => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Schemas::ListDiscoverersOutput object:

  $result = $service_obj->Method(...);
  $result->Att1->Discoverers

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Discoverers => ArrayRef[L<Paws::Schemas::DiscovererSummary>]

  An array of DiscovererSummary information.


=head2 NextToken => Str

  The token that specifies the next page of results to return. To request
the first page, leave NextToken empty. The token will expire in 24
hours, and cannot be shared with other accounts.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Schemas>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

