# Generated from default/object.tt
package Paws::SimpleWorkflow::FailWorkflowExecutionFailedEventAttributes;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::SimpleWorkflow::Types qw//;
  has Cause => (is => 'ro', isa => Str, required => 1);
  has DecisionTaskCompletedEventId => (is => 'ro', isa => Int, required => 1);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Cause' => 'cause',
                       'DecisionTaskCompletedEventId' => 'decisionTaskCompletedEventId'
                     },
  'IsRequired' => {
                    'DecisionTaskCompletedEventId' => 1,
                    'Cause' => 1
                  },
  'types' => {
               'DecisionTaskCompletedEventId' => {
                                                   'type' => 'Int'
                                                 },
               'Cause' => {
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

Paws::SimpleWorkflow::FailWorkflowExecutionFailedEventAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::FailWorkflowExecutionFailedEventAttributes object:

  $service_obj->Method(Att1 => { Cause => $value, ..., DecisionTaskCompletedEventId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::FailWorkflowExecutionFailedEventAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->Cause

=head1 DESCRIPTION

Provides the details of the C<FailWorkflowExecutionFailed> event.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Cause => Str

  The cause of the failure. This information is generated by the system
and can be useful for diagnostic purposes.

If C<cause> is set to C<OPERATION_NOT_PERMITTED>, the decision failed
because it lacked sufficient permissions. For details and example IAM
policies, see Using IAM to Manage Access to Amazon SWF Workflows
(https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html)
in the I<Amazon SWF Developer Guide>.


=head2 B<REQUIRED> DecisionTaskCompletedEventId => Int

  The ID of the C<DecisionTaskCompleted> event corresponding to the
decision task that resulted in the C<FailWorkflowExecution> decision to
fail this execution. This information can be useful for diagnosing
problems by tracing back the chain of events leading up to this event.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

