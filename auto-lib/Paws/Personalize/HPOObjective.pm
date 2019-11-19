# Generated from default/object.tt
package Paws::Personalize::HPOObjective;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Personalize::Types qw//;
  has MetricName => (is => 'ro', isa => Str);
  has MetricRegex => (is => 'ro', isa => Str);
  has Type => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'MetricRegex' => 'metricRegex',
                       'Type' => 'type',
                       'MetricName' => 'metricName'
                     },
  'types' => {
               'MetricName' => {
                                 'type' => 'Str'
                               },
               'MetricRegex' => {
                                  'type' => 'Str'
                                },
               'Type' => {
                           'type' => 'Str'
                         }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::HPOObjective

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Personalize::HPOObjective object:

  $service_obj->Method(Att1 => { MetricName => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Personalize::HPOObjective object:

  $result = $service_obj->Method(...);
  $result->Att1->MetricName

=head1 DESCRIPTION

The metric to optimize during hyperparameter optimization (HPO).

=head1 ATTRIBUTES


=head2 MetricName => Str

  The name of the metric.


=head2 MetricRegex => Str

  A regular expression for finding the metric in the training job logs.


=head2 Type => Str

  The data type of the metric.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

