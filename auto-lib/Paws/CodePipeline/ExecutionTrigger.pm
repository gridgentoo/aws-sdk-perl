package Paws::CodePipeline::ExecutionTrigger;
  use Moose;
  has TriggerDetail => (is => 'ro', isa => 'Str', request_name => 'triggerDetail', traits => ['NameInRequest']);
  has TriggerType => (is => 'ro', isa => 'Str', request_name => 'triggerType', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ExecutionTrigger

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::ExecutionTrigger object:

  $service_obj->Method(Att1 => { TriggerDetail => $value, ..., TriggerType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::ExecutionTrigger object:

  $result = $service_obj->Method(...);
  $result->Att1->TriggerDetail

=head1 DESCRIPTION

The interaction or event that started a pipeline execution.

=head1 ATTRIBUTES


=head2 TriggerDetail => Str

  Detail related to the event that started a pipeline execution, such as
the webhook ARN of the webhook that triggered the pipeline execution or
the user ARN for a user-initiated C<start-pipeline-execution> CLI
command.


=head2 TriggerType => Str

  The type of change-detection method, command, or user interaction that
started a pipeline execution.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

