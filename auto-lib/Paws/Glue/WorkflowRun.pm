package Paws::Glue::WorkflowRun;
  use Moose;
  has CompletedOn => (is => 'ro', isa => 'Str');
  has Graph => (is => 'ro', isa => 'Paws::Glue::WorkflowGraph');
  has Name => (is => 'ro', isa => 'Str');
  has StartedOn => (is => 'ro', isa => 'Str');
  has Statistics => (is => 'ro', isa => 'Paws::Glue::WorkflowRunStatistics');
  has Status => (is => 'ro', isa => 'Str');
  has WorkflowRunId => (is => 'ro', isa => 'Str');
  has WorkflowRunProperties => (is => 'ro', isa => 'Paws::Glue::WorkflowRunProperties');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::WorkflowRun

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::WorkflowRun object:

  $service_obj->Method(Att1 => { CompletedOn => $value, ..., WorkflowRunProperties => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::WorkflowRun object:

  $result = $service_obj->Method(...);
  $result->Att1->CompletedOn

=head1 DESCRIPTION

A workflow run is an execution of a workflow providing all the runtime
information.

=head1 ATTRIBUTES


=head2 CompletedOn => Str

  The date and time when the workflow run completed.


=head2 Graph => L<Paws::Glue::WorkflowGraph>

  The graph representing all the AWS Glue components that belong to the
workflow as nodes and directed connections between them as edges.


=head2 Name => Str

  Name of the workflow which was executed.


=head2 StartedOn => Str

  The date and time when the workflow run was started.


=head2 Statistics => L<Paws::Glue::WorkflowRunStatistics>

  The statistics of the run.


=head2 Status => Str

  The status of the workflow run.


=head2 WorkflowRunId => Str

  The ID of this workflow run.


=head2 WorkflowRunProperties => L<Paws::Glue::WorkflowRunProperties>

  The workflow run properties which were set during the run.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

