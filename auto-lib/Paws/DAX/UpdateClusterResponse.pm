# Generated from json/callresult_class.tt

package Paws::DAX::UpdateClusterResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DAX::Types qw/DAX_Cluster/;
  has Cluster => (is => 'ro', isa => DAX_Cluster);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Cluster' => {
                              'type' => 'DAX_Cluster',
                              'class' => 'Paws::DAX::Cluster'
                            }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DAX::UpdateClusterResponse

=head1 ATTRIBUTES


=head2 Cluster => DAX_Cluster

A description of the DAX cluster, after it has been modified.


=head2 _request_id => Str


=cut

1;