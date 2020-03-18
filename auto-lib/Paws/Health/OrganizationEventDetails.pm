package Paws::Health::OrganizationEventDetails;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', request_name => 'awsAccountId', traits => ['NameInRequest']);
  has Event => (is => 'ro', isa => 'Paws::Health::Event', request_name => 'event', traits => ['NameInRequest']);
  has EventDescription => (is => 'ro', isa => 'Paws::Health::EventDescription', request_name => 'eventDescription', traits => ['NameInRequest']);
  has EventMetadata => (is => 'ro', isa => 'Paws::Health::EventMetadata', request_name => 'eventMetadata', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Health::OrganizationEventDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Health::OrganizationEventDetails object:

  $service_obj->Method(Att1 => { AwsAccountId => $value, ..., EventMetadata => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Health::OrganizationEventDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->AwsAccountId

=head1 DESCRIPTION

Detailed information about an event. A combination of an Event object,
an EventDescription object, and additional metadata about the event.
Returned by the DescribeEventDetailsForOrganization operation.

=head1 ATTRIBUTES


=head2 AwsAccountId => Str

  The 12-digit AWS account numbers that contains the affected entities.


=head2 Event => L<Paws::Health::Event>

  


=head2 EventDescription => L<Paws::Health::EventDescription>

  


=head2 EventMetadata => L<Paws::Health::EventMetadata>

  Additional metadata about the event.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Health>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

