package Paws::S3Control::PublicAccessBlockConfiguration;
  use Moose;
  has BlockPublicAcls => (is => 'ro', isa => 'Bool');
  has BlockPublicPolicy => (is => 'ro', isa => 'Bool');
  has IgnorePublicAcls => (is => 'ro', isa => 'Bool');
  has RestrictPublicBuckets => (is => 'ro', isa => 'Bool');

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::PublicAccessBlockConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3Control::PublicAccessBlockConfiguration object:

  $service_obj->Method(Att1 => { BlockPublicAcls => $value, ..., RestrictPublicBuckets => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3Control::PublicAccessBlockConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->BlockPublicAcls

=head1 DESCRIPTION

The C<PublicAccessBlock> configuration that you want to apply to this
Amazon S3 bucket. You can enable the configuration options in any
combination. For more information about when Amazon S3 considers a
bucket or object public, see The Meaning of "Public"
(https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status)
in the Amazon Simple Storage Service Developer Guide.

=head1 ATTRIBUTES


=head2 BlockPublicAcls => Bool

  Specifies whether Amazon S3 should block public access control lists
(ACLs) for buckets in this account. Setting this element to C<TRUE>
causes the following behavior:

=over

=item *

PUT Bucket acl and PUT Object acl calls fail if the specified ACL is
public.

=item *

PUT Object calls fail if the request includes a public ACL.

=item *

PUT Bucket calls fail if the request includes a public ACL.

=back

Enabling this setting doesn't affect existing policies or ACLs.


=head2 BlockPublicPolicy => Bool

  Specifies whether Amazon S3 should block public bucket policies for
buckets in this account. Setting this element to C<TRUE> causes Amazon
S3 to reject calls to PUT Bucket policy if the specified bucket policy
allows public access.

Enabling this setting doesn't affect existing bucket policies.


=head2 IgnorePublicAcls => Bool

  Specifies whether Amazon S3 should ignore public ACLs for buckets in
this account. Setting this element to C<TRUE> causes Amazon S3 to
ignore all public ACLs on buckets in this account and any objects that
they contain.

Enabling this setting doesn't affect the persistence of any existing
ACLs and doesn't prevent new public ACLs from being set.


=head2 RestrictPublicBuckets => Bool

  Specifies whether Amazon S3 should restrict public bucket policies for
buckets in this account. Setting this element to C<TRUE> restricts
access to buckets with public policies to only AWS services and
authorized users within this account.

Enabling this setting doesn't affect previously stored bucket policies,
except that public and cross-account access within any public bucket
policy, including non-public delegation to specific accounts, is
blocked.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

