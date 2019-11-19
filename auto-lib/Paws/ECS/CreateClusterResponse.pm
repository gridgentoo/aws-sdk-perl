# Generated from json/callresult_class.tt

package Paws::ECS::CreateClusterResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ECS::Types qw/ECS_Cluster/;
  has Cluster => (is => 'ro', isa => ECS_Cluster);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Cluster' => {
                              'type' => 'ECS_Cluster',
                              'class' => 'Paws::ECS::Cluster'
                            }
             },
  'NameInRequest' => {
                       'Cluster' => 'cluster'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ECS::CreateClusterResponse

=head1 ATTRIBUTES


=head2 Cluster => ECS_Cluster

The full description of your new cluster.


=head2 _request_id => Str


=cut

1;