package Paws::Pinpoint::JourneyExecutionMetricsResponse;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', required => 1);
  has JourneyId => (is => 'ro', isa => 'Str', required => 1);
  has LastEvaluatedTime => (is => 'ro', isa => 'Str', required => 1);
  has Metrics => (is => 'ro', isa => 'Paws::Pinpoint::MapOf__string', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::JourneyExecutionMetricsResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::JourneyExecutionMetricsResponse object:

  $service_obj->Method(Att1 => { ApplicationId => $value, ..., Metrics => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::JourneyExecutionMetricsResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationId

=head1 DESCRIPTION

Provides the results of a query that retrieved the data for a standard
execution metric that applies to a journey, and provides information
about that query.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

  The unique identifier for the application that the metric applies to.


=head2 B<REQUIRED> JourneyId => Str

  The unique identifier for the journey that the metric applies to.


=head2 B<REQUIRED> LastEvaluatedTime => Str

  The date and time, in ISO 8601 format, when Amazon Pinpoint last
evaluated the journey and updated the data for the metric.


=head2 B<REQUIRED> Metrics => L<Paws::Pinpoint::MapOf__string>

  A JSON object that contains the results of the query. For information
about the structure and contents of the results, see the Amazon
Pinpoint Developer Guide
(https://docs.aws.amazon.com/pinpoint/latest/developerguide/welcome.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

