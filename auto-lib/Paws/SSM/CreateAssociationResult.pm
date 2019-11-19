# Generated from json/callresult_class.tt

package Paws::SSM::CreateAssociationResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SSM::Types qw/SSM_AssociationDescription/;
  has AssociationDescription => (is => 'ro', isa => SSM_AssociationDescription);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AssociationDescription' => {
                                             'class' => 'Paws::SSM::AssociationDescription',
                                             'type' => 'SSM_AssociationDescription'
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

Paws::SSM::CreateAssociationResult

=head1 ATTRIBUTES


=head2 AssociationDescription => SSM_AssociationDescription

Information about the association.


=head2 _request_id => Str


=cut

1;