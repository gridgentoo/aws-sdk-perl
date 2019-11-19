# Generated from json/callargs_class.tt

package Paws::SSM::DescribeMaintenanceWindowSchedule;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::SSM::Types qw/SSM_PatchOrchestratorFilter SSM_Target/;
  has Filters => (is => 'ro', isa => ArrayRef[SSM_PatchOrchestratorFilter], predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has ResourceType => (is => 'ro', isa => Str, predicate => 1);
  has Targets => (is => 'ro', isa => ArrayRef[SSM_Target], predicate => 1);
  has WindowId => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeMaintenanceWindowSchedule');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SSM::DescribeMaintenanceWindowScheduleResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceType' => {
                                   'type' => 'Str'
                                 },
               'WindowId' => {
                               'type' => 'Str'
                             },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'Targets' => {
                              'class' => 'Paws::SSM::Target',
                              'type' => 'ArrayRef[SSM_Target]'
                            },
               'Filters' => {
                              'class' => 'Paws::SSM::PatchOrchestratorFilter',
                              'type' => 'ArrayRef[SSM_PatchOrchestratorFilter]'
                            }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeMaintenanceWindowSchedule - Arguments for method DescribeMaintenanceWindowSchedule on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeMaintenanceWindowSchedule on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method DescribeMaintenanceWindowSchedule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeMaintenanceWindowSchedule.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $DescribeMaintenanceWindowScheduleResult =
      $ssm->DescribeMaintenanceWindowSchedule(
      Filters => [
        {
          Key    => 'MyPatchOrchestratorFilterKey', # min: 1, max: 128; OPTIONAL
          Values => [
            'MyPatchOrchestratorFilterValue', ...    # min: 1, max: 256
          ],                                         # OPTIONAL
        },
        ...
      ],                                             # OPTIONAL
      MaxResults   => 1,                             # OPTIONAL
      NextToken    => 'MyNextToken',                 # OPTIONAL
      ResourceType => 'INSTANCE',                    # OPTIONAL
      Targets      => [
        {
          Key    => 'MyTargetKey',               # min: 1, max: 163; OPTIONAL
          Values => [ 'MyTargetValue', ... ],    # max: 50; OPTIONAL
        },
        ...
      ],                                         # OPTIONAL
      WindowId => 'MyMaintenanceWindowId',       # OPTIONAL
      );

    # Results:
    my $NextToken = $DescribeMaintenanceWindowScheduleResult->NextToken;
    my $ScheduledWindowExecutions =
      $DescribeMaintenanceWindowScheduleResult->ScheduledWindowExecutions;

    # Returns a L<Paws::SSM::DescribeMaintenanceWindowScheduleResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/DescribeMaintenanceWindowSchedule>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[SSM_PatchOrchestratorFilter]

Filters used to limit the range of results. For example, you can limit
maintenance window executions to only those scheduled before or after a
certain date and time.



=head2 MaxResults => Int

The maximum number of items to return for this call. The call also
returns a token that you can specify in a subsequent call to get the
next set of results.



=head2 NextToken => Str

The token for the next set of items to return. (You received this token
from a previous call.)



=head2 ResourceType => Str

The type of resource you want to retrieve information about. For
example, "INSTANCE".

Valid values are: C<"INSTANCE">, C<"RESOURCE_GROUP">

=head2 Targets => ArrayRef[SSM_Target]

The instance ID or key/value pair to retrieve information about.



=head2 WindowId => Str

The ID of the maintenance window to retrieve information about.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeMaintenanceWindowSchedule in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

