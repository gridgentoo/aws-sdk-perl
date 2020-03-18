package Paws::SecurityHub::ResourceDetails;
  use Moose;
  has AwsCloudFrontDistribution => (is => 'ro', isa => 'Paws::SecurityHub::AwsCloudFrontDistributionDetails');
  has AwsCodeBuildProject => (is => 'ro', isa => 'Paws::SecurityHub::AwsCodeBuildProjectDetails');
  has AwsEc2Instance => (is => 'ro', isa => 'Paws::SecurityHub::AwsEc2InstanceDetails');
  has AwsEc2NetworkInterface => (is => 'ro', isa => 'Paws::SecurityHub::AwsEc2NetworkInterfaceDetails');
  has AwsEc2SecurityGroup => (is => 'ro', isa => 'Paws::SecurityHub::AwsEc2SecurityGroupDetails');
  has AwsElasticsearchDomain => (is => 'ro', isa => 'Paws::SecurityHub::AwsElasticsearchDomainDetails');
  has AwsElbv2LoadBalancer => (is => 'ro', isa => 'Paws::SecurityHub::AwsElbv2LoadBalancerDetails');
  has AwsIamAccessKey => (is => 'ro', isa => 'Paws::SecurityHub::AwsIamAccessKeyDetails');
  has AwsIamRole => (is => 'ro', isa => 'Paws::SecurityHub::AwsIamRoleDetails');
  has AwsKmsKey => (is => 'ro', isa => 'Paws::SecurityHub::AwsKmsKeyDetails');
  has AwsLambdaFunction => (is => 'ro', isa => 'Paws::SecurityHub::AwsLambdaFunctionDetails');
  has AwsLambdaLayerVersion => (is => 'ro', isa => 'Paws::SecurityHub::AwsLambdaLayerVersionDetails');
  has AwsRdsDbInstance => (is => 'ro', isa => 'Paws::SecurityHub::AwsRdsDbInstanceDetails');
  has AwsS3Bucket => (is => 'ro', isa => 'Paws::SecurityHub::AwsS3BucketDetails');
  has AwsSnsTopic => (is => 'ro', isa => 'Paws::SecurityHub::AwsSnsTopicDetails');
  has AwsSqsQueue => (is => 'ro', isa => 'Paws::SecurityHub::AwsSqsQueueDetails');
  has AwsWafWebAcl => (is => 'ro', isa => 'Paws::SecurityHub::AwsWafWebAclDetails');
  has Container => (is => 'ro', isa => 'Paws::SecurityHub::ContainerDetails');
  has Other => (is => 'ro', isa => 'Paws::SecurityHub::FieldMap');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::ResourceDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::ResourceDetails object:

  $service_obj->Method(Att1 => { AwsCloudFrontDistribution => $value, ..., Other => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::ResourceDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->AwsCloudFrontDistribution

=head1 DESCRIPTION

Additional details about a resource related to a finding.

To provide the details, use the object that corresponds to the resource
type. For example, if the resource type is C<AwsEc2Instance>, then you
use the C<AwsEc2Instance> object to provide the details.

If the type-specific object does not contain all of the fields you want
to populate, then you use the C<Other> object to populate those
additional fields.

You also use the C<Other> object to populate the details when the
selected type does not have a corresponding object.

=head1 ATTRIBUTES


=head2 AwsCloudFrontDistribution => L<Paws::SecurityHub::AwsCloudFrontDistributionDetails>

  Details about a CloudFront distribution.


=head2 AwsCodeBuildProject => L<Paws::SecurityHub::AwsCodeBuildProjectDetails>

  Details for an AWS CodeBuild project.


=head2 AwsEc2Instance => L<Paws::SecurityHub::AwsEc2InstanceDetails>

  Details about an Amazon EC2 instance related to a finding.


=head2 AwsEc2NetworkInterface => L<Paws::SecurityHub::AwsEc2NetworkInterfaceDetails>

  Details for an AWS EC2 network interface.


=head2 AwsEc2SecurityGroup => L<Paws::SecurityHub::AwsEc2SecurityGroupDetails>

  Details for an EC2 security group.


=head2 AwsElasticsearchDomain => L<Paws::SecurityHub::AwsElasticsearchDomainDetails>

  Details for an Elasticsearch domain.


=head2 AwsElbv2LoadBalancer => L<Paws::SecurityHub::AwsElbv2LoadBalancerDetails>

  Details about a load balancer.


=head2 AwsIamAccessKey => L<Paws::SecurityHub::AwsIamAccessKeyDetails>

  Details about an IAM access key related to a finding.


=head2 AwsIamRole => L<Paws::SecurityHub::AwsIamRoleDetails>

  Details about an IAM role.


=head2 AwsKmsKey => L<Paws::SecurityHub::AwsKmsKeyDetails>

  Details about a KMS key.


=head2 AwsLambdaFunction => L<Paws::SecurityHub::AwsLambdaFunctionDetails>

  Details about a Lambda function.


=head2 AwsLambdaLayerVersion => L<Paws::SecurityHub::AwsLambdaLayerVersionDetails>

  Details for a Lambda layer version.


=head2 AwsRdsDbInstance => L<Paws::SecurityHub::AwsRdsDbInstanceDetails>

  Details for an RDS database instance.


=head2 AwsS3Bucket => L<Paws::SecurityHub::AwsS3BucketDetails>

  Details about an Amazon S3 Bucket related to a finding.


=head2 AwsSnsTopic => L<Paws::SecurityHub::AwsSnsTopicDetails>

  Details about an SNS topic.


=head2 AwsSqsQueue => L<Paws::SecurityHub::AwsSqsQueueDetails>

  Details about an SQS queue.


=head2 AwsWafWebAcl => L<Paws::SecurityHub::AwsWafWebAclDetails>

  Details for a WAF WebACL.


=head2 Container => L<Paws::SecurityHub::ContainerDetails>

  Details about a container resource related to a finding.


=head2 Other => L<Paws::SecurityHub::FieldMap>

  Details about a resource that are not available in a type-specific
details object. Use the C<Other> object in the following cases.

=over

=item *

The type-specific object does not contain all of the fields that you
want to populate. In this case, first use the type-specific object to
populate those fields. Use the C<Other> object to populate the fields
that are missing from the type-specific object.

=item *

The resource type does not have a corresponding object. This includes
resources for which the type is C<Other>.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

