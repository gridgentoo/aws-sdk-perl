# Generated from json/callresult_class.tt

package Paws::ServiceCatalog::CreatePortfolioShareOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ServiceCatalog::Types qw//;
  has PortfolioShareToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'PortfolioShareToken' => {
                                          'type' => 'Str'
                                        }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::CreatePortfolioShareOutput

=head1 ATTRIBUTES


=head2 PortfolioShareToken => Str

The portfolio share unique identifier. This will only be returned if
portfolio is shared to an organization node.


=head2 _request_id => Str


=cut

1;