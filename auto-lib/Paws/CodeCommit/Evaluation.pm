package Paws::CodeCommit::Evaluation;
  use Moose;
  has ApprovalRulesNotSatisfied => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'approvalRulesNotSatisfied', traits => ['NameInRequest']);
  has ApprovalRulesSatisfied => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'approvalRulesSatisfied', traits => ['NameInRequest']);
  has Approved => (is => 'ro', isa => 'Bool', request_name => 'approved', traits => ['NameInRequest']);
  has Overridden => (is => 'ro', isa => 'Bool', request_name => 'overridden', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::Evaluation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeCommit::Evaluation object:

  $service_obj->Method(Att1 => { ApprovalRulesNotSatisfied => $value, ..., Overridden => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeCommit::Evaluation object:

  $result = $service_obj->Method(...);
  $result->Att1->ApprovalRulesNotSatisfied

=head1 DESCRIPTION

Returns information about the approval rules applied to a pull request
and whether conditions have been met.

=head1 ATTRIBUTES


=head2 ApprovalRulesNotSatisfied => ArrayRef[Str|Undef]

  The names of the approval rules that have not had their conditions met.


=head2 ApprovalRulesSatisfied => ArrayRef[Str|Undef]

  The names of the approval rules that have had their conditions met.


=head2 Approved => Bool

  Whether the state of the pull request is approved.


=head2 Overridden => Bool

  Whether the approval rule requirements for the pull request have been
overridden and no longer need to be met.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

