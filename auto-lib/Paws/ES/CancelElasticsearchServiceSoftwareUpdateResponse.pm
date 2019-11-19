
package Paws::ES::CancelElasticsearchServiceSoftwareUpdateResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ES::Types qw/ES_ServiceSoftwareOptions/;
  has ServiceSoftwareOptions => (is => 'ro', isa => ES_ServiceSoftwareOptions);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ServiceSoftwareOptions' => {
                                             'type' => 'ES_ServiceSoftwareOptions',
                                             'class' => 'Paws::ES::ServiceSoftwareOptions'
                                           },
               '_request_id' => {
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

Paws::ES::CancelElasticsearchServiceSoftwareUpdateResponse

=head1 ATTRIBUTES


=head2 ServiceSoftwareOptions => ES_ServiceSoftwareOptions

The current status of the Elasticsearch service software update.


=head2 _request_id => Str


=cut

