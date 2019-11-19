# Generated from callresult_class.tt

package Paws::IAM::GetLoginProfileResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IAM::Types qw/IAM_LoginProfile/;
  has LoginProfile => (is => 'ro', isa => IAM_LoginProfile, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'LoginProfile' => 1
                  },
  'types' => {
               'LoginProfile' => {
                                   'type' => 'IAM_LoginProfile',
                                   'class' => 'Paws::IAM::LoginProfile'
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

Paws::IAM::GetLoginProfileResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> LoginProfile => IAM_LoginProfile

A structure containing the user name and password create date for the
user.


=head2 _request_id => Str


=cut

