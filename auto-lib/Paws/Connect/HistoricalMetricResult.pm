# Generated from default/object.tt
package Paws::Connect::HistoricalMetricResult;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::Connect::Types qw/Connect_HistoricalMetricData Connect_Dimensions/;
  has Collections => (is => 'ro', isa => ArrayRef[Connect_HistoricalMetricData]);
  has Dimensions => (is => 'ro', isa => Connect_Dimensions);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Collections' => {
                                  'type' => 'ArrayRef[Connect_HistoricalMetricData]',
                                  'class' => 'Paws::Connect::HistoricalMetricData'
                                },
               'Dimensions' => {
                                 'type' => 'Connect_Dimensions',
                                 'class' => 'Paws::Connect::Dimensions'
                               }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::HistoricalMetricResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Connect::HistoricalMetricResult object:

  $service_obj->Method(Att1 => { Collections => $value, ..., Dimensions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Connect::HistoricalMetricResult object:

  $result = $service_obj->Method(...);
  $result->Att1->Collections

=head1 DESCRIPTION

Contains information about the historical metrics retrieved.

=head1 ATTRIBUTES


=head2 Collections => ArrayRef[Connect_HistoricalMetricData]

  The set of metrics.


=head2 Dimensions => Connect_Dimensions

  The dimension for the metrics.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

