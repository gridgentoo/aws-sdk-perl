# Generated from json/callargs_class.tt

package Paws::Lightsail::CreateInstancesFromSnapshot;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef Bool/;
  use Paws::Lightsail::Types qw/Lightsail_AttachedDiskMap Lightsail_Tag Lightsail_AddOnRequest/;
  has AddOns => (is => 'ro', isa => ArrayRef[Lightsail_AddOnRequest], predicate => 1);
  has AttachedDiskMapping => (is => 'ro', isa => Lightsail_AttachedDiskMap, predicate => 1);
  has AvailabilityZone => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has BundleId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has InstanceNames => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1, predicate => 1);
  has InstanceSnapshotName => (is => 'ro', isa => Str, predicate => 1);
  has KeyPairName => (is => 'ro', isa => Str, predicate => 1);
  has RestoreDate => (is => 'ro', isa => Str, predicate => 1);
  has SourceInstanceName => (is => 'ro', isa => Str, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[Lightsail_Tag], predicate => 1);
  has UseLatestRestorableAutoSnapshot => (is => 'ro', isa => Bool, predicate => 1);
  has UserData => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateInstancesFromSnapshot');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Lightsail::CreateInstancesFromSnapshotResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'KeyPairName' => {
                                  'type' => 'Str'
                                },
               'AddOns' => {
                             'type' => 'ArrayRef[Lightsail_AddOnRequest]',
                             'class' => 'Paws::Lightsail::AddOnRequest'
                           },
               'UseLatestRestorableAutoSnapshot' => {
                                                      'type' => 'Bool'
                                                    },
               'AttachedDiskMapping' => {
                                          'class' => 'Paws::Lightsail::AttachedDiskMap',
                                          'type' => 'Lightsail_AttachedDiskMap'
                                        },
               'AvailabilityZone' => {
                                       'type' => 'Str'
                                     },
               'SourceInstanceName' => {
                                         'type' => 'Str'
                                       },
               'Tags' => {
                           'type' => 'ArrayRef[Lightsail_Tag]',
                           'class' => 'Paws::Lightsail::Tag'
                         },
               'InstanceSnapshotName' => {
                                           'type' => 'Str'
                                         },
               'InstanceNames' => {
                                    'type' => 'ArrayRef[Str|Undef]'
                                  },
               'BundleId' => {
                               'type' => 'Str'
                             },
               'RestoreDate' => {
                                  'type' => 'Str'
                                },
               'UserData' => {
                               'type' => 'Str'
                             }
             },
  'NameInRequest' => {
                       'AvailabilityZone' => 'availabilityZone',
                       'AttachedDiskMapping' => 'attachedDiskMapping',
                       'UseLatestRestorableAutoSnapshot' => 'useLatestRestorableAutoSnapshot',
                       'SourceInstanceName' => 'sourceInstanceName',
                       'InstanceNames' => 'instanceNames',
                       'InstanceSnapshotName' => 'instanceSnapshotName',
                       'Tags' => 'tags',
                       'RestoreDate' => 'restoreDate',
                       'BundleId' => 'bundleId',
                       'UserData' => 'userData',
                       'KeyPairName' => 'keyPairName',
                       'AddOns' => 'addOns'
                     },
  'IsRequired' => {
                    'AvailabilityZone' => 1,
                    'InstanceNames' => 1,
                    'BundleId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::CreateInstancesFromSnapshot - Arguments for method CreateInstancesFromSnapshot on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateInstancesFromSnapshot on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method CreateInstancesFromSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateInstancesFromSnapshot.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $CreateInstancesFromSnapshotResult =
      $lightsail->CreateInstancesFromSnapshot(
      AvailabilityZone => 'Mystring',
      BundleId         => 'MyNonEmptyString',
      InstanceNames    => [ 'Mystring', ... ],
      AddOns           => [
        {
          AddOnType                => 'AutoSnapshot',    # values: AutoSnapshot
          AutoSnapshotAddOnRequest => {
            SnapshotTimeOfDay => 'MyTimeOfDay',          # OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],        # OPTIONAL
      AttachedDiskMapping => {
        'MyResourceName' => [
          {
            NewDiskName      => 'MyResourceName',
            OriginalDiskPath => 'MyNonEmptyString',
          },
          ...
        ],
      },        # OPTIONAL
      InstanceSnapshotName => 'MyResourceName',    # OPTIONAL
      KeyPairName          => 'MyResourceName',    # OPTIONAL
      RestoreDate          => 'Mystring',          # OPTIONAL
      SourceInstanceName   => 'Mystring',          # OPTIONAL
      Tags                 => [
        {
          Key   => 'MyTagKey',                     # OPTIONAL
          Value => 'MyTagValue',                   # OPTIONAL
        },
        ...
      ],                                           # OPTIONAL
      UseLatestRestorableAutoSnapshot => 1,             # OPTIONAL
      UserData                        => 'Mystring',    # OPTIONAL
      );

    # Results:
    my $Operations = $CreateInstancesFromSnapshotResult->Operations;

    # Returns a L<Paws::Lightsail::CreateInstancesFromSnapshotResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/CreateInstancesFromSnapshot>

=head1 ATTRIBUTES


=head2 AddOns => ArrayRef[Lightsail_AddOnRequest]

An array of objects representing the add-ons to enable for the new
instance.



=head2 AttachedDiskMapping => Lightsail_AttachedDiskMap

An object containing information about one or more disk mappings.



=head2 B<REQUIRED> AvailabilityZone => Str

The Availability Zone where you want to create your instances. Use the
following formatting: C<us-east-2a> (case sensitive). You can get a
list of Availability Zones by using the get regions
(http://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetRegions.html)
operation. Be sure to add the C<include Availability Zones> parameter
to your request.



=head2 B<REQUIRED> BundleId => Str

The bundle of specification information for your virtual private server
(or I<instance>), including the pricing plan (e.g., C<micro_1_0>).



=head2 B<REQUIRED> InstanceNames => ArrayRef[Str|Undef]

The names for your new instances.



=head2 InstanceSnapshotName => Str

The name of the instance snapshot on which you are basing your new
instances. Use the get instance snapshots operation to return
information about your existing snapshots.

This parameter cannot be defined together with the C<source instance
name> parameter. The C<instance snapshot name> and C<source instance
name> parameters are mutually exclusive.



=head2 KeyPairName => Str

The name for your key pair.



=head2 RestoreDate => Str

The date of the automatic snapshot to use for the new instance.

Use the C<get auto snapshots> operation to identify the dates of the
available automatic snapshots.

Constraints:

=over

=item *

Must be specified in C<YYYY-MM-DD> format.

=item *

This parameter cannot be defined together with the C<use latest
restorable auto snapshot> parameter. The C<restore date> and C<use
latest restorable auto snapshot> parameters are mutually exclusive.

=back

Define this parameter only when creating a new instance from an
automatic snapshot. For more information, see the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-configuring-automatic-snapshots).



=head2 SourceInstanceName => Str

The name of the source instance from which the source automatic
snapshot was created.

This parameter cannot be defined together with the C<instance snapshot
name> parameter. The C<source instance name> and C<instance snapshot
name> parameters are mutually exclusive.

Define this parameter only when creating a new instance from an
automatic snapshot. For more information, see the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-configuring-automatic-snapshots).



=head2 Tags => ArrayRef[Lightsail_Tag]

The tag keys and optional values to add to the resource during create.

To tag a resource after it has been created, see the C<tag resource>
operation.



=head2 UseLatestRestorableAutoSnapshot => Bool

A Boolean value to indicate whether to use the latest available
automatic snapshot.

This parameter cannot be defined together with the C<restore date>
parameter. The C<use latest restorable auto snapshot> and C<restore
date> parameters are mutually exclusive.

Define this parameter only when creating a new instance from an
automatic snapshot. For more information, see the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-configuring-automatic-snapshots).



=head2 UserData => Str

You can create a launch script that configures a server with additional
user data. For example, C<apt-get -y update>.

Depending on the machine image you choose, the command to get software
on your instance varies. Amazon Linux and CentOS use C<yum>, Debian and
Ubuntu use C<apt-get>, and FreeBSD uses C<pkg>. For a complete list,
see the Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/getting-started/article/compare-options-choose-lightsail-instance-image).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateInstancesFromSnapshot in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

