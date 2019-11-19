
package Paws::Greengrass::CreateDeploymentResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Greengrass::Types qw//;
  has DeploymentArn => (is => 'ro', isa => Str);
  has DeploymentId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DeploymentId' => {
                                   'type' => 'Str'
                                 },
               'DeploymentArn' => {
                                    'type' => 'Str'
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

Paws::Greengrass::CreateDeploymentResponse

=head1 ATTRIBUTES


=head2 DeploymentArn => Str

The ARN of the deployment.


=head2 DeploymentId => Str

The ID of the deployment.


=head2 _request_id => Str


=cut

