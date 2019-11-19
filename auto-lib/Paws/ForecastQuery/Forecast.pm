# Generated from default/object.tt
package Paws::ForecastQuery::Forecast;
  use Moo;
  use Types::Standard qw//;
  use Paws::ForecastQuery::Types qw/ForecastQuery_Predictions/;
  has Predictions => (is => 'ro', isa => ForecastQuery_Predictions);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Predictions' => {
                                  'type' => 'ForecastQuery_Predictions',
                                  'class' => 'Paws::ForecastQuery::Predictions'
                                }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ForecastQuery::Forecast

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ForecastQuery::Forecast object:

  $service_obj->Method(Att1 => { Predictions => $value, ..., Predictions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ForecastQuery::Forecast object:

  $result = $service_obj->Method(...);
  $result->Att1->Predictions

=head1 DESCRIPTION

Provides information about a forecast. Returned as part of the
QueryForecast response.

=head1 ATTRIBUTES


=head2 Predictions => ForecastQuery_Predictions

  The forecast.

The I<string> of the string to array map is one of the following
values:

=over

=item *

mean

=item *

p10

=item *

p50

=item *

p90

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ForecastQuery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

