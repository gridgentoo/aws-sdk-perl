# Generated from default/object.tt
package Paws::XRay::TimeSeriesServiceStatistics;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::XRay::Types qw/XRay_EdgeStatistics XRay_ServiceStatistics XRay_HistogramEntry/;
  has EdgeSummaryStatistics => (is => 'ro', isa => XRay_EdgeStatistics);
  has ResponseTimeHistogram => (is => 'ro', isa => ArrayRef[XRay_HistogramEntry]);
  has ServiceSummaryStatistics => (is => 'ro', isa => XRay_ServiceStatistics);
  has Timestamp => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EdgeSummaryStatistics' => {
                                            'class' => 'Paws::XRay::EdgeStatistics',
                                            'type' => 'XRay_EdgeStatistics'
                                          },
               'Timestamp' => {
                                'type' => 'Str'
                              },
               'ResponseTimeHistogram' => {
                                            'class' => 'Paws::XRay::HistogramEntry',
                                            'type' => 'ArrayRef[XRay_HistogramEntry]'
                                          },
               'ServiceSummaryStatistics' => {
                                               'class' => 'Paws::XRay::ServiceStatistics',
                                               'type' => 'XRay_ServiceStatistics'
                                             }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::TimeSeriesServiceStatistics

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::XRay::TimeSeriesServiceStatistics object:

  $service_obj->Method(Att1 => { EdgeSummaryStatistics => $value, ..., Timestamp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::XRay::TimeSeriesServiceStatistics object:

  $result = $service_obj->Method(...);
  $result->Att1->EdgeSummaryStatistics

=head1 DESCRIPTION

A list of TimeSeriesStatistic structures.

=head1 ATTRIBUTES


=head2 EdgeSummaryStatistics => XRay_EdgeStatistics

  


=head2 ResponseTimeHistogram => ArrayRef[XRay_HistogramEntry]

  The response time histogram for the selected entities.


=head2 ServiceSummaryStatistics => XRay_ServiceStatistics

  


=head2 Timestamp => Str

  Timestamp of the window for which statistics are aggregated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

