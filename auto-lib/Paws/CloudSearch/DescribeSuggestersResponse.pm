# Generated from callresult_class.tt

package Paws::CloudSearch::DescribeSuggestersResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudSearch::Types qw/CloudSearch_SuggesterStatus/;
  has Suggesters => (is => 'ro', isa => ArrayRef[CloudSearch_SuggesterStatus], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Suggesters' => {
                                 'type' => 'ArrayRef[CloudSearch_SuggesterStatus]',
                                 'class' => 'Paws::CloudSearch::SuggesterStatus'
                               }
             },
  'IsRequired' => {
                    'Suggesters' => 1
                  }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::DescribeSuggestersResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Suggesters => ArrayRef[CloudSearch_SuggesterStatus]

The suggesters configured for the domain specified in the request.


=head2 _request_id => Str


=cut

