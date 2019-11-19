# Generated from callresult_class.tt

package Paws::IAM::GetPolicyVersionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IAM::Types qw/IAM_PolicyVersion/;
  has PolicyVersion => (is => 'ro', isa => IAM_PolicyVersion);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'PolicyVersion' => {
                                    'type' => 'IAM_PolicyVersion',
                                    'class' => 'Paws::IAM::PolicyVersion'
                                  }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GetPolicyVersionResponse

=head1 ATTRIBUTES


=head2 PolicyVersion => IAM_PolicyVersion

A structure containing details about the policy version.


=head2 _request_id => Str


=cut

