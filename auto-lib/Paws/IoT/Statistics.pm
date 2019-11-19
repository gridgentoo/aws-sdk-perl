# Generated from default/object.tt
package Paws::IoT::Statistics;
  use Moo;
  use Types::Standard qw/Num Int/;
  use Paws::IoT::Types qw//;
  has Average => (is => 'ro', isa => Num);
  has Count => (is => 'ro', isa => Int);
  has Maximum => (is => 'ro', isa => Num);
  has Minimum => (is => 'ro', isa => Num);
  has StdDeviation => (is => 'ro', isa => Num);
  has Sum => (is => 'ro', isa => Num);
  has SumOfSquares => (is => 'ro', isa => Num);
  has Variance => (is => 'ro', isa => Num);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Average' => {
                              'type' => 'Num'
                            },
               'Count' => {
                            'type' => 'Int'
                          },
               'SumOfSquares' => {
                                   'type' => 'Num'
                                 },
               'StdDeviation' => {
                                   'type' => 'Num'
                                 },
               'Maximum' => {
                              'type' => 'Num'
                            },
               'Variance' => {
                               'type' => 'Num'
                             },
               'Sum' => {
                          'type' => 'Num'
                        },
               'Minimum' => {
                              'type' => 'Num'
                            }
             },
  'NameInRequest' => {
                       'SumOfSquares' => 'sumOfSquares',
                       'StdDeviation' => 'stdDeviation',
                       'Average' => 'average',
                       'Count' => 'count',
                       'Minimum' => 'minimum',
                       'Maximum' => 'maximum',
                       'Sum' => 'sum',
                       'Variance' => 'variance'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::Statistics

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::Statistics object:

  $service_obj->Method(Att1 => { Average => $value, ..., Variance => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::Statistics object:

  $result = $service_obj->Method(...);
  $result->Att1->Average

=head1 DESCRIPTION

A map of key-value pairs for all supported statistics. Currently, only
count is supported.

=head1 ATTRIBUTES


=head2 Average => Num

  The average of the aggregated fields. If the field data type is String
this value is indeterminate.


=head2 Count => Int

  The count of things that match the query.


=head2 Maximum => Num

  The maximum value of the aggregated fields. If the field data type is
String this value is indeterminate.


=head2 Minimum => Num

  The minimum value of the aggregated fields. If the field data type is
String this value is indeterminate.


=head2 StdDeviation => Num

  The standard deviation of the aggregated field values.


=head2 Sum => Num

  The sum of the aggregated fields. If the field data type is String this
value is indeterminate.


=head2 SumOfSquares => Num

  The sum of the squares of the aggregated field values.


=head2 Variance => Num

  The variance of the aggregated field values.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

