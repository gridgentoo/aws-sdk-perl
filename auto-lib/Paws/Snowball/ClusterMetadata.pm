# Generated from default/object.tt
package Paws::Snowball::ClusterMetadata;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Snowball::Types qw/Snowball_Notification Snowball_JobResource/;
  has AddressId => (is => 'ro', isa => Str);
  has ClusterId => (is => 'ro', isa => Str);
  has ClusterState => (is => 'ro', isa => Str);
  has CreationDate => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has ForwardingAddressId => (is => 'ro', isa => Str);
  has JobType => (is => 'ro', isa => Str);
  has KmsKeyARN => (is => 'ro', isa => Str);
  has Notification => (is => 'ro', isa => Snowball_Notification);
  has Resources => (is => 'ro', isa => Snowball_JobResource);
  has RoleARN => (is => 'ro', isa => Str);
  has ShippingOption => (is => 'ro', isa => Str);
  has SnowballType => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ClusterId' => {
                                'type' => 'Str'
                              },
               'Resources' => {
                                'type' => 'Snowball_JobResource',
                                'class' => 'Paws::Snowball::JobResource'
                              },
               'Description' => {
                                  'type' => 'Str'
                                },
               'RoleARN' => {
                              'type' => 'Str'
                            },
               'Notification' => {
                                   'type' => 'Snowball_Notification',
                                   'class' => 'Paws::Snowball::Notification'
                                 },
               'ForwardingAddressId' => {
                                          'type' => 'Str'
                                        },
               'SnowballType' => {
                                   'type' => 'Str'
                                 },
               'AddressId' => {
                                'type' => 'Str'
                              },
               'ClusterState' => {
                                   'type' => 'Str'
                                 },
               'JobType' => {
                              'type' => 'Str'
                            },
               'KmsKeyARN' => {
                                'type' => 'Str'
                              },
               'ShippingOption' => {
                                     'type' => 'Str'
                                   },
               'CreationDate' => {
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

Paws::Snowball::ClusterMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Snowball::ClusterMetadata object:

  $service_obj->Method(Att1 => { AddressId => $value, ..., SnowballType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Snowball::ClusterMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->AddressId

=head1 DESCRIPTION

Contains metadata about a specific cluster.

=head1 ATTRIBUTES


=head2 AddressId => Str

  The automatically generated ID for a specific address.


=head2 ClusterId => Str

  The automatically generated ID for a cluster.


=head2 ClusterState => Str

  The current status of the cluster.


=head2 CreationDate => Str

  The creation date for this cluster.


=head2 Description => Str

  The optional description of the cluster.


=head2 ForwardingAddressId => Str

  The ID of the address that you want a cluster shipped to, after it will
be shipped to its primary address. This field is not supported in most
regions.


=head2 JobType => Str

  The type of job for this cluster. Currently, the only job type
supported for clusters is C<LOCAL_USE>.


=head2 KmsKeyARN => Str

  The C<KmsKeyARN> Amazon Resource Name (ARN) associated with this
cluster. This ARN was created using the CreateKey
(https://docs.aws.amazon.com/kms/latest/APIReference/API_CreateKey.html)
API action in AWS Key Management Service (AWS KMS).


=head2 Notification => Snowball_Notification

  The Amazon Simple Notification Service (Amazon SNS) notification
settings for this cluster.


=head2 Resources => Snowball_JobResource

  The arrays of JobResource objects that can include updated S3Resource
objects or LambdaResource objects.


=head2 RoleARN => Str

  The role ARN associated with this cluster. This ARN was created using
the CreateRole
(https://docs.aws.amazon.com/IAM/latest/APIReference/API_CreateRole.html)
API action in AWS Identity and Access Management (IAM).


=head2 ShippingOption => Str

  The shipping speed for each node in this cluster. This speed doesn't
dictate how soon you'll get each Snowball Edge device, rather it
represents how quickly each device moves to its destination while in
transit. Regional shipping speeds are as follows:

=over

=item *

In Australia, you have access to express shipping. Typically, devices
shipped express are delivered in about a day.

=item *

In the European Union (EU), you have access to express shipping.
Typically, Snowball Edges shipped express are delivered in about a day.
In addition, most countries in the EU have access to standard shipping,
which typically takes less than a week, one way.

=item *

In India, Snowball Edges are delivered in one to seven days.

=item *

In the US, you have access to one-day shipping and two-day shipping.

=back



=head2 SnowballType => Str

  The type of AWS Snowball device to use for this cluster. Currently, the
only supported device type for cluster jobs is C<EDGE>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Snowball>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

