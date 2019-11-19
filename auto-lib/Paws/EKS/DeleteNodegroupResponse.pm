
package Paws::EKS::DeleteNodegroupResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::EKS::Types qw/EKS_Nodegroup/;
  has Nodegroup => (is => 'ro', isa => EKS_Nodegroup);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Nodegroup' => {
                                'class' => 'Paws::EKS::Nodegroup',
                                'type' => 'EKS_Nodegroup'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Nodegroup' => 'nodegroup'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::DeleteNodegroupResponse

=head1 ATTRIBUTES


=head2 Nodegroup => EKS_Nodegroup

The full description of your deleted node group.


=head2 _request_id => Str


=cut

