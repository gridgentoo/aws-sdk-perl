package Paws::Health::OrganizationEventFilter;
  use Moose;
  has AwsAccountIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'awsAccountIds', traits => ['NameInRequest']);
  has EndTime => (is => 'ro', isa => 'Paws::Health::DateTimeRange', request_name => 'endTime', traits => ['NameInRequest']);
  has EntityArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'entityArns', traits => ['NameInRequest']);
  has EntityValues => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'entityValues', traits => ['NameInRequest']);
  has EventStatusCodes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'eventStatusCodes', traits => ['NameInRequest']);
  has EventTypeCategories => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'eventTypeCategories', traits => ['NameInRequest']);
  has EventTypeCodes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'eventTypeCodes', traits => ['NameInRequest']);
  has LastUpdatedTime => (is => 'ro', isa => 'Paws::Health::DateTimeRange', request_name => 'lastUpdatedTime', traits => ['NameInRequest']);
  has Regions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'regions', traits => ['NameInRequest']);
  has Services => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'services', traits => ['NameInRequest']);
  has StartTime => (is => 'ro', isa => 'Paws::Health::DateTimeRange', request_name => 'startTime', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Health::OrganizationEventFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Health::OrganizationEventFilter object:

  $service_obj->Method(Att1 => { AwsAccountIds => $value, ..., StartTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Health::OrganizationEventFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->AwsAccountIds

=head1 DESCRIPTION

The values to filter results from the DescribeEventsForOrganization
operation.

=head1 ATTRIBUTES


=head2 AwsAccountIds => ArrayRef[Str|Undef]

  A list of 12-digit AWS account numbers that contains the affected
entities.


=head2 EndTime => L<Paws::Health::DateTimeRange>

  


=head2 EntityArns => ArrayRef[Str|Undef]

  REPLACEME


=head2 EntityValues => ArrayRef[Str|Undef]

  A list of entity identifiers, such as EC2 instance IDs (i-34ab692e) or
EBS volumes (vol-426ab23e).


=head2 EventStatusCodes => ArrayRef[Str|Undef]

  A list of event status codes.


=head2 EventTypeCategories => ArrayRef[Str|Undef]

  REPLACEME


=head2 EventTypeCodes => ArrayRef[Str|Undef]

  A list of unique identifiers for event types. For example,
C<"AWS_EC2_SYSTEM_MAINTENANCE_EVENT","AWS_RDS_MAINTENANCE_SCHEDULED".>


=head2 LastUpdatedTime => L<Paws::Health::DateTimeRange>

  


=head2 Regions => ArrayRef[Str|Undef]

  A list of AWS Regions.


=head2 Services => ArrayRef[Str|Undef]

  The AWS services associated with the event. For example, C<EC2>,
C<RDS>.


=head2 StartTime => L<Paws::Health::DateTimeRange>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Health>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

