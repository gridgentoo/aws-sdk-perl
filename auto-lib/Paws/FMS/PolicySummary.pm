# Generated from default/object.tt
package Paws::FMS::PolicySummary;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::FMS::Types qw//;
  has PolicyArn => (is => 'ro', isa => Str);
  has PolicyId => (is => 'ro', isa => Str);
  has PolicyName => (is => 'ro', isa => Str);
  has RemediationEnabled => (is => 'ro', isa => Bool);
  has ResourceType => (is => 'ro', isa => Str);
  has SecurityServiceType => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RemediationEnabled' => {
                                         'type' => 'Bool'
                                       },
               'ResourceType' => {
                                   'type' => 'Str'
                                 },
               'SecurityServiceType' => {
                                          'type' => 'Str'
                                        },
               'PolicyName' => {
                                 'type' => 'Str'
                               },
               'PolicyArn' => {
                                'type' => 'Str'
                              },
               'PolicyId' => {
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

Paws::FMS::PolicySummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FMS::PolicySummary object:

  $service_obj->Method(Att1 => { PolicyArn => $value, ..., SecurityServiceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FMS::PolicySummary object:

  $result = $service_obj->Method(...);
  $result->Att1->PolicyArn

=head1 DESCRIPTION

Details of the AWS Firewall Manager policy.

=head1 ATTRIBUTES


=head2 PolicyArn => Str

  The Amazon Resource Name (ARN) of the specified policy.


=head2 PolicyId => Str

  The ID of the specified policy.


=head2 PolicyName => Str

  The friendly name of the specified policy.


=head2 RemediationEnabled => Bool

  Indicates if the policy should be automatically applied to new
resources.


=head2 ResourceType => Str

  The type of resource protected by or in scope of the policy. This is in
the format shown in the AWS Resource Types Reference
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html).
For AWS WAF and Shield Advanced, examples include
C<AWS::ElasticLoadBalancingV2::LoadBalancer> and
C<AWS::CloudFront::Distribution>. For a security group common policy,
valid values are C<AWS::EC2::NetworkInterface> and
C<AWS::EC2::Instance>. For a security group content audit policy, valid
values are C<AWS::EC2::SecurityGroup>, C<AWS::EC2::NetworkInterface>,
and C<AWS::EC2::Instance>. For a security group usage audit policy, the
value is C<AWS::EC2::SecurityGroup>.


=head2 SecurityServiceType => Str

  The service that the policy is using to protect the resources. This
specifies the type of policy that is created, either an AWS WAF policy,
a Shield Advanced policy, or a security group policy.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

