# Generated from json/callresult_class.tt

package Paws::CostExplorer::GetCostForecastResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CostExplorer::Types qw/CostExplorer_ForecastResult CostExplorer_MetricValue/;
  has ForecastResultsByTime => (is => 'ro', isa => ArrayRef[CostExplorer_ForecastResult]);
  has Total => (is => 'ro', isa => CostExplorer_MetricValue);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Total' => {
                            'class' => 'Paws::CostExplorer::MetricValue',
                            'type' => 'CostExplorer_MetricValue'
                          },
               'ForecastResultsByTime' => {
                                            'class' => 'Paws::CostExplorer::ForecastResult',
                                            'type' => 'ArrayRef[CostExplorer_ForecastResult]'
                                          },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::GetCostForecastResponse

=head1 ATTRIBUTES


=head2 ForecastResultsByTime => ArrayRef[CostExplorer_ForecastResult]

The forecasts for your query, in order. For C<DAILY> forecasts, this is
a list of days. For C<MONTHLY> forecasts, this is a list of months.


=head2 Total => CostExplorer_MetricValue

How much you are forecasted to spend over the forecast period, in
C<USD>.


=head2 _request_id => Str


=cut

1;