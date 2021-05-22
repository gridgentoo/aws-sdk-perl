
package Paws::Quicksight::UpdateDashboard;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has DashboardId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DashboardId', required => 1);
  has DashboardPublishOptions => (is => 'ro', isa => 'Paws::Quicksight::DashboardPublishOptions');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Parameters => (is => 'ro', isa => 'Paws::Quicksight::Parameters');
  has SourceEntity => (is => 'ro', isa => 'Paws::Quicksight::DashboardSourceEntity', required => 1);
  has ThemeArn => (is => 'ro', isa => 'Str');
  has VersionDescription => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDashboard');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/dashboards/{DashboardId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::UpdateDashboardResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::UpdateDashboard - Arguments for method UpdateDashboard on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDashboard on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method UpdateDashboard.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDashboard.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $UpdateDashboardResponse = $quicksight->UpdateDashboard(
      AwsAccountId => 'MyAwsAccountId',
      DashboardId  => 'MyRestrictiveResourceId',
      Name         => 'MyDashboardName',
      SourceEntity => {
        SourceTemplate => {
          Arn               => 'MyArn',
          DataSetReferences => [
            {
              DataSetArn         => 'MyArn',
              DataSetPlaceholder => 'MyNonEmptyString',

            },
            ...
          ],    # min: 1

        },    # OPTIONAL
      },
      DashboardPublishOptions => {
        AdHocFilteringOption => {
          AvailabilityStatus => 'ENABLED', # values: ENABLED, DISABLED; OPTIONAL
        },    # OPTIONAL
        ExportToCSVOption => {
          AvailabilityStatus => 'ENABLED', # values: ENABLED, DISABLED; OPTIONAL
        },    # OPTIONAL
        SheetControlsOption => {
          VisibilityState => 'EXPANDED', # values: EXPANDED, COLLAPSED; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Parameters => {
        DateTimeParameters => [
          {
            Name   => 'MyNonEmptyString',
            Values => [ '1970-01-01T01:00:00', ... ],

          },
          ...
        ],    # max: 100; OPTIONAL
        DecimalParameters => [
          {
            Name   => 'MyNonEmptyString',
            Values => [ 1, ... ],

          },
          ...
        ],    # max: 100; OPTIONAL
        IntegerParameters => [
          {
            Name   => 'MyNonEmptyString',
            Values => [ 1, ... ],

          },
          ...
        ],    # max: 100; OPTIONAL
        StringParameters => [
          {
            Name   => 'MyNonEmptyString',
            Values => [ 'MyString', ... ],

          },
          ...
        ],    # max: 100; OPTIONAL
      },    # OPTIONAL
      ThemeArn           => 'MyArn',                   # OPTIONAL
      VersionDescription => 'MyVersionDescription',    # OPTIONAL
    );

    # Results:
    my $Arn            = $UpdateDashboardResponse->Arn;
    my $CreationStatus = $UpdateDashboardResponse->CreationStatus;
    my $DashboardId    = $UpdateDashboardResponse->DashboardId;
    my $RequestId      = $UpdateDashboardResponse->RequestId;
    my $Status         = $UpdateDashboardResponse->Status;
    my $VersionArn     = $UpdateDashboardResponse->VersionArn;

    # Returns a L<Paws::Quicksight::UpdateDashboardResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/UpdateDashboard>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsAccountId => Str

The ID of the AWS account that contains the dashboard that you're
updating.



=head2 B<REQUIRED> DashboardId => Str

The ID for the dashboard.



=head2 DashboardPublishOptions => L<Paws::Quicksight::DashboardPublishOptions>

Options for publishing the dashboard when you create it:

=over

=item *

C<AvailabilityStatus> for C<AdHocFilteringOption> - This status can be
either C<ENABLED> or C<DISABLED>. When this is set to C<DISABLED>,
QuickSight disables the left filter pane on the published dashboard,
which can be used for ad hoc (one-time) filtering. This option is
C<ENABLED> by default.

=item *

C<AvailabilityStatus> for C<ExportToCSVOption> - This status can be
either C<ENABLED> or C<DISABLED>. The visual option to export data to
.CSV format isn't enabled when this is set to C<DISABLED>. This option
is C<ENABLED> by default.

=item *

C<VisibilityState> for C<SheetControlsOption> - This visibility state
can be either C<COLLAPSED> or C<EXPANDED>. This option is C<COLLAPSED>
by default.

=back




=head2 B<REQUIRED> Name => Str

The display name of the dashboard.



=head2 Parameters => L<Paws::Quicksight::Parameters>

A structure that contains the parameters of the dashboard. These are
parameter overrides for a dashboard. A dashboard can have any type of
parameters, and some parameters might accept multiple values.



=head2 B<REQUIRED> SourceEntity => L<Paws::Quicksight::DashboardSourceEntity>

The entity that you are using as a source when you update the
dashboard. In C<SourceEntity>, you specify the type of object you're
using as source. You can only update a dashboard from a template, so
you use a C<SourceTemplate> entity. If you need to update a dashboard
from an analysis, first convert the analysis to a template by using the
CreateTemplate API operation. For C<SourceTemplate>, specify the Amazon
Resource Name (ARN) of the source template. The C<SourceTemplate> ARN
can contain any AWS Account and any QuickSight-supported AWS Region.

Use the C<DataSetReferences> entity within C<SourceTemplate> to list
the replacement datasets for the placeholders listed in the original.
The schema in each dataset must match its placeholder.



=head2 ThemeArn => Str

The Amazon Resource Name (ARN) of the theme that is being used for this
dashboard. If you add a value for this field, it overrides the value
that was originally associated with the entity. The theme ARN must
exist in the same AWS account where you create the dashboard.



=head2 VersionDescription => Str

A description for the first version of the dashboard being created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDashboard in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

