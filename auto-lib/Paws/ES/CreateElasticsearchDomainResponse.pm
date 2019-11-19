
package Paws::ES::CreateElasticsearchDomainResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ES::Types qw/ES_ElasticsearchDomainStatus/;
  has DomainStatus => (is => 'ro', isa => ES_ElasticsearchDomainStatus);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DomainStatus' => {
                                   'class' => 'Paws::ES::ElasticsearchDomainStatus',
                                   'type' => 'ES_ElasticsearchDomainStatus'
                                 }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::CreateElasticsearchDomainResponse

=head1 ATTRIBUTES


=head2 DomainStatus => ES_ElasticsearchDomainStatus

The status of the newly created Elasticsearch domain.


=head2 _request_id => Str


=cut

