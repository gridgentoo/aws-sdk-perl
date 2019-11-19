# Generated from json/callargs_class.tt

package Paws::ECS::CreateCluster;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ECS::Types qw/ECS_Tag ECS_ClusterSetting/;
  has ClusterName => (is => 'ro', isa => Str, predicate => 1);
  has Settings => (is => 'ro', isa => ArrayRef[ECS_ClusterSetting], predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[ECS_Tag], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateCluster');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ECS::CreateClusterResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Tags' => 'tags',
                       'Settings' => 'settings',
                       'ClusterName' => 'clusterName'
                     },
  'types' => {
               'Tags' => {
                           'type' => 'ArrayRef[ECS_Tag]',
                           'class' => 'Paws::ECS::Tag'
                         },
               'Settings' => {
                               'class' => 'Paws::ECS::ClusterSetting',
                               'type' => 'ArrayRef[ECS_ClusterSetting]'
                             },
               'ClusterName' => {
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

Paws::ECS::CreateCluster - Arguments for method CreateCluster on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCluster on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method CreateCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCluster.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    # To create a new cluster
    # This example creates a cluster in your default region.
    my $CreateClusterResponse =
      $ecs->CreateCluster( 'ClusterName' => 'my_cluster' );

    # Results:
    my $cluster = $CreateClusterResponse->cluster;

    # Returns a L<Paws::ECS::CreateClusterResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/CreateCluster>

=head1 ATTRIBUTES


=head2 ClusterName => Str

The name of your cluster. If you do not specify a name for your
cluster, you create a cluster named C<default>. Up to 255 letters
(uppercase and lowercase), numbers, and hyphens are allowed.



=head2 Settings => ArrayRef[ECS_ClusterSetting]

The setting to use when creating a cluster. This parameter is used to
enable CloudWatch Container Insights for a cluster. If this value is
specified, it will override the C<containerInsights> value set with
PutAccountSetting or PutAccountSettingDefault.



=head2 Tags => ArrayRef[ECS_Tag]

The metadata that you apply to the cluster to help you categorize and
organize them. Each tag consists of a key and an optional value, both
of which you define.

The following basic restrictions apply to tags:

=over

=item *

Maximum number of tags per resource - 50

=item *

For each resource, each tag key must be unique, and each tag key can
have only one value.

=item *

Maximum key length - 128 Unicode characters in UTF-8

=item *

Maximum value length - 256 Unicode characters in UTF-8

=item *

If your tagging schema is used across multiple services and resources,
remember that other services may have restrictions on allowed
characters. Generally allowed characters are: letters, numbers, and
spaces representable in UTF-8, and the following characters: + - = . _
: / @.

=item *

Tag keys and values are case-sensitive.

=item *

Do not use C<aws:>, C<AWS:>, or any upper or lowercase combination of
such as a prefix for either keys or values as it is reserved for AWS
use. You cannot edit or delete tag keys or values with this prefix.
Tags with this prefix do not count against your tags per resource
limit.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCluster in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

