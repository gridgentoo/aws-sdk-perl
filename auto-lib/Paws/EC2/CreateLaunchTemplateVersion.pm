
package Paws::EC2::CreateLaunchTemplateVersion;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::EC2::Types qw/EC2_RequestLaunchTemplateData/;
  has ClientToken => (is => 'ro', isa => Str, predicate => 1);
  has DryRun => (is => 'ro', isa => Bool, predicate => 1);
  has LaunchTemplateData => (is => 'ro', isa => EC2_RequestLaunchTemplateData, required => 1, predicate => 1);
  has LaunchTemplateId => (is => 'ro', isa => Str, predicate => 1);
  has LaunchTemplateName => (is => 'ro', isa => Str, predicate => 1);
  has SourceVersion => (is => 'ro', isa => Str, predicate => 1);
  has VersionDescription => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateLaunchTemplateVersion');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::EC2::CreateLaunchTemplateVersionResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LaunchTemplateData' => {
                                         'type' => 'EC2_RequestLaunchTemplateData',
                                         'class' => 'Paws::EC2::RequestLaunchTemplateData'
                                       },
               'VersionDescription' => {
                                         'type' => 'Str'
                                       },
               'LaunchTemplateName' => {
                                         'type' => 'Str'
                                       },
               'ClientToken' => {
                                  'type' => 'Str'
                                },
               'SourceVersion' => {
                                    'type' => 'Str'
                                  },
               'DryRun' => {
                             'type' => 'Bool'
                           },
               'LaunchTemplateId' => {
                                       'type' => 'Str'
                                     }
             },
  'IsRequired' => {
                    'LaunchTemplateData' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateLaunchTemplateVersion - Arguments for method CreateLaunchTemplateVersion on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLaunchTemplateVersion on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateLaunchTemplateVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLaunchTemplateVersion.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $CreateLaunchTemplateVersionResult = $ec2->CreateLaunchTemplateVersion(
      LaunchTemplateData => {
        BlockDeviceMappings => [
          {
            DeviceName => 'MyString',    # OPTIONAL
            Ebs        => {
              DeleteOnTermination => 1,             # OPTIONAL
              Encrypted           => 1,             # OPTIONAL
              Iops                => 1,             # OPTIONAL
              KmsKeyId            => 'MyString',    # OPTIONAL
              SnapshotId          => 'MyString',    # OPTIONAL
              VolumeSize          => 1,             # OPTIONAL
              VolumeType =>
                'standard',    # values: standard, io1, gp2, sc1, st1; OPTIONAL
            },    # OPTIONAL
            NoDevice    => 'MyString',    # OPTIONAL
            VirtualName => 'MyString',    # OPTIONAL
          },
          ...
        ],                                # OPTIONAL
        CapacityReservationSpecification => {
          CapacityReservationPreference =>
            'open',                       # values: open, none; OPTIONAL
          CapacityReservationTarget => {
            CapacityReservationId => 'MyString',    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        CpuOptions => {
          CoreCount      => 1,    # OPTIONAL
          ThreadsPerCore => 1,    # OPTIONAL
        },    # OPTIONAL
        CreditSpecification => {
          CpuCredits => 'MyString',    # OPTIONAL

        },    # OPTIONAL
        DisableApiTermination    => 1,    # OPTIONAL
        EbsOptimized             => 1,    # OPTIONAL
        ElasticGpuSpecifications => [
          {
            Type => 'MyString',           # OPTIONAL

          },
          ...
        ],                                # OPTIONAL
        ElasticInferenceAccelerators => [
          {
            Type => 'MyString',           # OPTIONAL

          },
          ...
        ],                                # OPTIONAL
        HibernationOptions => {
          Configured => 1,                # OPTIONAL
        },    # OPTIONAL
        IamInstanceProfile => {
          Arn  => 'MyString',    # OPTIONAL
          Name => 'MyString',    # OPTIONAL
        },    # OPTIONAL
        ImageId => 'MyString',    # OPTIONAL
        InstanceInitiatedShutdownBehavior =>
          'stop',                 # values: stop, terminate; OPTIONAL
        InstanceMarketOptions => {
          MarketType  => 'spot',    # values: spot; OPTIONAL
          SpotOptions => {
            BlockDurationMinutes => 1,    # OPTIONAL
            InstanceInterruptionBehavior =>
              'hibernate',    # values: hibernate, stop, terminate; OPTIONAL
            MaxPrice => 'MyString',    # OPTIONAL
            SpotInstanceType =>
              'one-time',              # values: one-time, persistent; OPTIONAL
            ValidUntil => '1970-01-01T01:00:00',    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        InstanceType => 't1.micro'
        , # values: t1.micro, t2.nano, t2.micro, t2.small, t2.medium, t2.large, t2.xlarge, t2.2xlarge, t3.nano, t3.micro, t3.small, t3.medium, t3.large, t3.xlarge, t3.2xlarge, t3a.nano, t3a.micro, t3a.small, t3a.medium, t3a.large, t3a.xlarge, t3a.2xlarge, m1.small, m1.medium, m1.large, m1.xlarge, m3.medium, m3.large, m3.xlarge, m3.2xlarge, m4.large, m4.xlarge, m4.2xlarge, m4.4xlarge, m4.10xlarge, m4.16xlarge, m2.xlarge, m2.2xlarge, m2.4xlarge, cr1.8xlarge, r3.large, r3.xlarge, r3.2xlarge, r3.4xlarge, r3.8xlarge, r4.large, r4.xlarge, r4.2xlarge, r4.4xlarge, r4.8xlarge, r4.16xlarge, r5.large, r5.xlarge, r5.2xlarge, r5.4xlarge, r5.8xlarge, r5.12xlarge, r5.16xlarge, r5.24xlarge, r5.metal, r5a.large, r5a.xlarge, r5a.2xlarge, r5a.4xlarge, r5a.8xlarge, r5a.12xlarge, r5a.16xlarge, r5a.24xlarge, r5d.large, r5d.xlarge, r5d.2xlarge, r5d.4xlarge, r5d.8xlarge, r5d.12xlarge, r5d.16xlarge, r5d.24xlarge, r5d.metal, r5ad.large, r5ad.xlarge, r5ad.2xlarge, r5ad.4xlarge, r5ad.8xlarge, r5ad.12xlarge, r5ad.16xlarge, r5ad.24xlarge, x1.16xlarge, x1.32xlarge, x1e.xlarge, x1e.2xlarge, x1e.4xlarge, x1e.8xlarge, x1e.16xlarge, x1e.32xlarge, i2.xlarge, i2.2xlarge, i2.4xlarge, i2.8xlarge, i3.large, i3.xlarge, i3.2xlarge, i3.4xlarge, i3.8xlarge, i3.16xlarge, i3.metal, i3en.large, i3en.xlarge, i3en.2xlarge, i3en.3xlarge, i3en.6xlarge, i3en.12xlarge, i3en.24xlarge, i3en.metal, hi1.4xlarge, hs1.8xlarge, c1.medium, c1.xlarge, c3.large, c3.xlarge, c3.2xlarge, c3.4xlarge, c3.8xlarge, c4.large, c4.xlarge, c4.2xlarge, c4.4xlarge, c4.8xlarge, c5.large, c5.xlarge, c5.2xlarge, c5.4xlarge, c5.9xlarge, c5.12xlarge, c5.18xlarge, c5.24xlarge, c5.metal, c5d.large, c5d.xlarge, c5d.2xlarge, c5d.4xlarge, c5d.9xlarge, c5d.18xlarge, c5n.large, c5n.xlarge, c5n.2xlarge, c5n.4xlarge, c5n.9xlarge, c5n.18xlarge, cc1.4xlarge, cc2.8xlarge, g2.2xlarge, g2.8xlarge, g3.4xlarge, g3.8xlarge, g3.16xlarge, g3s.xlarge, g4dn.xlarge, g4dn.2xlarge, g4dn.4xlarge, g4dn.8xlarge, g4dn.12xlarge, g4dn.16xlarge, cg1.4xlarge, p2.xlarge, p2.8xlarge, p2.16xlarge, p3.2xlarge, p3.8xlarge, p3.16xlarge, p3dn.24xlarge, d2.xlarge, d2.2xlarge, d2.4xlarge, d2.8xlarge, f1.2xlarge, f1.4xlarge, f1.16xlarge, m5.large, m5.xlarge, m5.2xlarge, m5.4xlarge, m5.8xlarge, m5.12xlarge, m5.16xlarge, m5.24xlarge, m5.metal, m5a.large, m5a.xlarge, m5a.2xlarge, m5a.4xlarge, m5a.8xlarge, m5a.12xlarge, m5a.16xlarge, m5a.24xlarge, m5d.large, m5d.xlarge, m5d.2xlarge, m5d.4xlarge, m5d.8xlarge, m5d.12xlarge, m5d.16xlarge, m5d.24xlarge, m5d.metal, m5ad.large, m5ad.xlarge, m5ad.2xlarge, m5ad.4xlarge, m5ad.8xlarge, m5ad.12xlarge, m5ad.16xlarge, m5ad.24xlarge, h1.2xlarge, h1.4xlarge, h1.8xlarge, h1.16xlarge, z1d.large, z1d.xlarge, z1d.2xlarge, z1d.3xlarge, z1d.6xlarge, z1d.12xlarge, z1d.metal, u-6tb1.metal, u-9tb1.metal, u-12tb1.metal, u-18tb1.metal, u-24tb1.metal, a1.medium, a1.large, a1.xlarge, a1.2xlarge, a1.4xlarge, a1.metal, m5dn.large, m5dn.xlarge, m5dn.2xlarge, m5dn.4xlarge, m5dn.8xlarge, m5dn.12xlarge, m5dn.16xlarge, m5dn.24xlarge, m5n.large, m5n.xlarge, m5n.2xlarge, m5n.4xlarge, m5n.8xlarge, m5n.12xlarge, m5n.16xlarge, m5n.24xlarge, r5dn.large, r5dn.xlarge, r5dn.2xlarge, r5dn.4xlarge, r5dn.8xlarge, r5dn.12xlarge, r5dn.16xlarge, r5dn.24xlarge, r5n.large, r5n.xlarge, r5n.2xlarge, r5n.4xlarge, r5n.8xlarge, r5n.12xlarge, r5n.16xlarge, r5n.24xlarge; OPTIONAL
        KernelId              => 'MyString',    # OPTIONAL
        KeyName               => 'MyString',    # OPTIONAL
        LicenseSpecifications => [
          {
            LicenseConfigurationArn => 'MyString',    # OPTIONAL
          },
          ...
        ],                                            # OPTIONAL
        Monitoring => {
          Enabled => 1,                               # OPTIONAL
        },    # OPTIONAL
        NetworkInterfaces => [
          {
            AssociatePublicIpAddress => 1,             # OPTIONAL
            DeleteOnTermination      => 1,             # OPTIONAL
            Description              => 'MyString',    # OPTIONAL
            DeviceIndex              => 1,             # OPTIONAL
            Groups                   => [
              'MyString', ...                          # OPTIONAL
            ],                                         # OPTIONAL
            InterfaceType    => 'MyString',            # OPTIONAL
            Ipv6AddressCount => 1,                     # OPTIONAL
            Ipv6Addresses    => [
              {
                Ipv6Address => 'MyString',             # OPTIONAL
              },
              ...
            ],                                         # OPTIONAL
            NetworkInterfaceId => 'MyString',          # OPTIONAL
            PrivateIpAddress   => 'MyString',          # OPTIONAL
            PrivateIpAddresses => [
              {
                Primary          => 1,                 # OPTIONAL
                PrivateIpAddress => 'MyString',        # OPTIONAL
              },
              ...
            ],                                         # OPTIONAL
            SecondaryPrivateIpAddressCount => 1,             # OPTIONAL
            SubnetId                       => 'MyString',    # OPTIONAL
          },
          ...
        ],                                                   # OPTIONAL
        Placement => {
          Affinity         => 'MyString',                    # OPTIONAL
          AvailabilityZone => 'MyString',                    # OPTIONAL
          GroupName        => 'MyString',                    # OPTIONAL
          HostId           => 'MyString',                    # OPTIONAL
          SpreadDomain     => 'MyString',                    # OPTIONAL
          Tenancy => 'default',    # values: default, dedicated, host; OPTIONAL
        },    # OPTIONAL
        RamDiskId        => 'MyString',    # OPTIONAL
        SecurityGroupIds => [
          'MyString', ...                  # OPTIONAL
        ],                                 # OPTIONAL
        SecurityGroups => [
          'MyString', ...                  # OPTIONAL
        ],                                 # OPTIONAL
        TagSpecifications => [
          {
            ResourceType => 'client-vpn-endpoint'
            , # values: client-vpn-endpoint, customer-gateway, dedicated-host, dhcp-options, elastic-ip, fleet, fpga-image, host-reservation, image, instance, internet-gateway, launch-template, natgateway, network-acl, network-interface, reserved-instances, route-table, security-group, snapshot, spot-instances-request, subnet, traffic-mirror-filter, traffic-mirror-session, traffic-mirror-target, transit-gateway, transit-gateway-attachment, transit-gateway-route-table, volume, vpc, vpc-peering-connection, vpn-connection, vpn-gateway; OPTIONAL
            Tags => [
              {
                Key   => 'MyString',    # OPTIONAL
                Value => 'MyString',    # OPTIONAL
              },
              ...
            ],                          # OPTIONAL
          },
          ...
        ],                              # OPTIONAL
        UserData => 'MyString',         # OPTIONAL
      },
      ClientToken        => 'MyString',                # OPTIONAL
      DryRun             => 1,                         # OPTIONAL
      LaunchTemplateId   => 'MyLaunchTemplateId',      # OPTIONAL
      LaunchTemplateName => 'MyLaunchTemplateName',    # OPTIONAL
      SourceVersion      => 'MyString',                # OPTIONAL
      VersionDescription => 'MyVersionDescription',    # OPTIONAL
    );

    # Results:
    my $LaunchTemplateVersion =
      $CreateLaunchTemplateVersionResult->LaunchTemplateVersion;

    # Returns a L<Paws::EC2::CreateLaunchTemplateVersionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateLaunchTemplateVersion>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier you provide to ensure the idempotency
of the request. For more information, see Ensuring Idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).

Constraint: Maximum 128 ASCII characters.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> LaunchTemplateData => EC2_RequestLaunchTemplateData

The information for the launch template.



=head2 LaunchTemplateId => Str

The ID of the launch template. You must specify either the launch
template ID or launch template name in the request.



=head2 LaunchTemplateName => Str

The name of the launch template. You must specify either the launch
template ID or launch template name in the request.



=head2 SourceVersion => Str

The version number of the launch template version on which to base the
new version. The new version inherits the same launch parameters as the
source version, except for parameters that you specify in
C<LaunchTemplateData>. Snapshots applied to the block device mapping
are ignored when creating a new version unless they are explicitly
included.



=head2 VersionDescription => Str

A description for the version of the launch template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLaunchTemplateVersion in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

