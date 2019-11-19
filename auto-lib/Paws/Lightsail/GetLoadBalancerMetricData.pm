# Generated from json/callargs_class.tt

package Paws::Lightsail::GetLoadBalancerMetricData;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef Undef/;
  use Paws::Lightsail::Types qw//;
  has EndTime => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has LoadBalancerName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has MetricName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Period => (is => 'ro', isa => Int, required => 1, predicate => 1);
  has StartTime => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Statistics => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1, predicate => 1);
  has Unit => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetLoadBalancerMetricData');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Lightsail::GetLoadBalancerMetricDataResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Statistics' => 'statistics',
                       'Period' => 'period',
                       'Unit' => 'unit',
                       'LoadBalancerName' => 'loadBalancerName',
                       'EndTime' => 'endTime',
                       'MetricName' => 'metricName',
                       'StartTime' => 'startTime'
                     },
  'IsRequired' => {
                    'EndTime' => 1,
                    'MetricName' => 1,
                    'LoadBalancerName' => 1,
                    'StartTime' => 1,
                    'Period' => 1,
                    'Statistics' => 1,
                    'Unit' => 1
                  },
  'types' => {
               'StartTime' => {
                                'type' => 'Str'
                              },
               'LoadBalancerName' => {
                                       'type' => 'Str'
                                     },
               'EndTime' => {
                              'type' => 'Str'
                            },
               'MetricName' => {
                                 'type' => 'Str'
                               },
               'Unit' => {
                           'type' => 'Str'
                         },
               'Statistics' => {
                                 'type' => 'ArrayRef[Str|Undef]'
                               },
               'Period' => {
                             'type' => 'Int'
                           }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetLoadBalancerMetricData - Arguments for method GetLoadBalancerMetricData on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetLoadBalancerMetricData on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method GetLoadBalancerMetricData.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetLoadBalancerMetricData.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $GetLoadBalancerMetricDataResult = $lightsail->GetLoadBalancerMetricData(
      EndTime          => '1970-01-01T01:00:00',
      LoadBalancerName => 'MyResourceName',
      MetricName       => 'ClientTLSNegotiationErrorCount',
      Period           => 1,
      StartTime        => '1970-01-01T01:00:00',
      Statistics       => [
        'Minimum', ...    # values: Minimum, Maximum, Sum, Average, SampleCount
      ],
      Unit => 'Seconds',

    );

    # Results:
    my $MetricData = $GetLoadBalancerMetricDataResult->MetricData;
    my $MetricName = $GetLoadBalancerMetricDataResult->MetricName;

    # Returns a L<Paws::Lightsail::GetLoadBalancerMetricDataResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/GetLoadBalancerMetricData>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndTime => Str

The end time of the period.



=head2 B<REQUIRED> LoadBalancerName => Str

The name of the load balancer.



=head2 B<REQUIRED> MetricName => Str

The metric about which you want to return information. Valid values are
listed below, along with the most useful C<statistics> to include in
your request.

=over

=item *

B<C<ClientTLSNegotiationErrorCount> > - The number of TLS connections
initiated by the client that did not establish a session with the load
balancer. Possible causes include a mismatch of ciphers or protocols.

C<Statistics>: The most useful statistic is C<Sum>.

=item *

B<C<HealthyHostCount> > - The number of target instances that are
considered healthy.

C<Statistics>: The most useful statistic are C<Average>, C<Minimum>,
and C<Maximum>.

=item *

B<C<UnhealthyHostCount> > - The number of target instances that are
considered unhealthy.

C<Statistics>: The most useful statistic are C<Average>, C<Minimum>,
and C<Maximum>.

=item *

B<C<HTTPCode_LB_4XX_Count> > - The number of HTTP 4XX client error
codes that originate from the load balancer. Client errors are
generated when requests are malformed or incomplete. These requests
have not been received by the target instance. This count does not
include any response codes generated by the target instances.

C<Statistics>: The most useful statistic is C<Sum>. Note that
C<Minimum>, C<Maximum>, and C<Average> all return C<1>.

=item *

B<C<HTTPCode_LB_5XX_Count> > - The number of HTTP 5XX server error
codes that originate from the load balancer. This count does not
include any response codes generated by the target instances.

C<Statistics>: The most useful statistic is C<Sum>. Note that
C<Minimum>, C<Maximum>, and C<Average> all return C<1>. Note that
C<Minimum>, C<Maximum>, and C<Average> all return C<1>.

=item *

B<C<HTTPCode_Instance_2XX_Count> > - The number of HTTP response codes
generated by the target instances. This does not include any response
codes generated by the load balancer.

C<Statistics>: The most useful statistic is C<Sum>. Note that
C<Minimum>, C<Maximum>, and C<Average> all return C<1>.

=item *

B<C<HTTPCode_Instance_3XX_Count> > - The number of HTTP response codes
generated by the target instances. This does not include any response
codes generated by the load balancer.

C<Statistics>: The most useful statistic is C<Sum>. Note that
C<Minimum>, C<Maximum>, and C<Average> all return C<1>.

=item *

B<C<HTTPCode_Instance_4XX_Count> > - The number of HTTP response codes
generated by the target instances. This does not include any response
codes generated by the load balancer.

C<Statistics>: The most useful statistic is C<Sum>. Note that
C<Minimum>, C<Maximum>, and C<Average> all return C<1>.

=item *

B<C<HTTPCode_Instance_5XX_Count> > - The number of HTTP response codes
generated by the target instances. This does not include any response
codes generated by the load balancer.

C<Statistics>: The most useful statistic is C<Sum>. Note that
C<Minimum>, C<Maximum>, and C<Average> all return C<1>.

=item *

B<C<InstanceResponseTime> > - The time elapsed, in seconds, after the
request leaves the load balancer until a response from the target
instance is received.

C<Statistics>: The most useful statistic is C<Average>.

=item *

B<C<RejectedConnectionCount> > - The number of connections that were
rejected because the load balancer had reached its maximum number of
connections.

C<Statistics>: The most useful statistic is C<Sum>.

=item *

B<C<RequestCount> > - The number of requests processed over IPv4. This
count includes only the requests with a response generated by a target
instance of the load balancer.

C<Statistics>: The most useful statistic is C<Sum>. Note that
C<Minimum>, C<Maximum>, and C<Average> all return C<1>.

=back


Valid values are: C<"ClientTLSNegotiationErrorCount">, C<"HealthyHostCount">, C<"UnhealthyHostCount">, C<"HTTPCode_LB_4XX_Count">, C<"HTTPCode_LB_5XX_Count">, C<"HTTPCode_Instance_2XX_Count">, C<"HTTPCode_Instance_3XX_Count">, C<"HTTPCode_Instance_4XX_Count">, C<"HTTPCode_Instance_5XX_Count">, C<"InstanceResponseTime">, C<"RejectedConnectionCount">, C<"RequestCount">

=head2 B<REQUIRED> Period => Int

The granularity, in seconds, of the returned data points.



=head2 B<REQUIRED> StartTime => Str

The start time of the period.



=head2 B<REQUIRED> Statistics => ArrayRef[Str|Undef]

An array of statistics that you want to request metrics for. Valid
values are listed below.

=over

=item *

B<C<SampleCount> > - The count (number) of data points used for the
statistical calculation.

=item *

B<C<Average> > - The value of Sum / SampleCount during the specified
period. By comparing this statistic with the Minimum and Maximum, you
can determine the full scope of a metric and how close the average use
is to the Minimum and Maximum. This comparison helps you to know when
to increase or decrease your resources as needed.

=item *

B<C<Sum> > - All values submitted for the matching metric added
together. This statistic can be useful for determining the total volume
of a metric.

=item *

B<C<Minimum> > - The lowest value observed during the specified period.
You can use this value to determine low volumes of activity for your
application.

=item *

B<C<Maximum> > - The highest value observed during the specified
period. You can use this value to determine high volumes of activity
for your application.

=back




=head2 B<REQUIRED> Unit => Str

The unit for the time period request. Valid values are listed below.

Valid values are: C<"Seconds">, C<"Microseconds">, C<"Milliseconds">, C<"Bytes">, C<"Kilobytes">, C<"Megabytes">, C<"Gigabytes">, C<"Terabytes">, C<"Bits">, C<"Kilobits">, C<"Megabits">, C<"Gigabits">, C<"Terabits">, C<"Percent">, C<"Count">, C<"Bytes/Second">, C<"Kilobytes/Second">, C<"Megabytes/Second">, C<"Gigabytes/Second">, C<"Terabytes/Second">, C<"Bits/Second">, C<"Kilobits/Second">, C<"Megabits/Second">, C<"Gigabits/Second">, C<"Terabits/Second">, C<"Count/Second">, C<"None">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetLoadBalancerMetricData in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

