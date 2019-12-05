package Paws::CodeCommit::ApprovalRule;
  use Moose;
  has ApprovalRuleContent => (is => 'ro', isa => 'Str', request_name => 'approvalRuleContent', traits => ['NameInRequest']);
  has ApprovalRuleId => (is => 'ro', isa => 'Str', request_name => 'approvalRuleId', traits => ['NameInRequest']);
  has ApprovalRuleName => (is => 'ro', isa => 'Str', request_name => 'approvalRuleName', traits => ['NameInRequest']);
  has CreationDate => (is => 'ro', isa => 'Str', request_name => 'creationDate', traits => ['NameInRequest']);
  has LastModifiedDate => (is => 'ro', isa => 'Str', request_name => 'lastModifiedDate', traits => ['NameInRequest']);
  has LastModifiedUser => (is => 'ro', isa => 'Str', request_name => 'lastModifiedUser', traits => ['NameInRequest']);
  has OriginApprovalRuleTemplate => (is => 'ro', isa => 'Paws::CodeCommit::OriginApprovalRuleTemplate', request_name => 'originApprovalRuleTemplate', traits => ['NameInRequest']);
  has RuleContentSha256 => (is => 'ro', isa => 'Str', request_name => 'ruleContentSha256', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::ApprovalRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeCommit::ApprovalRule object:

  $service_obj->Method(Att1 => { ApprovalRuleContent => $value, ..., RuleContentSha256 => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeCommit::ApprovalRule object:

  $result = $service_obj->Method(...);
  $result->Att1->ApprovalRuleContent

=head1 DESCRIPTION

Returns information about an approval rule.

=head1 ATTRIBUTES


=head2 ApprovalRuleContent => Str

  The content of the approval rule.


=head2 ApprovalRuleId => Str

  The system-generated ID of the approval rule.


=head2 ApprovalRuleName => Str

  The name of the approval rule.


=head2 CreationDate => Str

  The date the approval rule was created, in timestamp format.


=head2 LastModifiedDate => Str

  The date the approval rule was most recently changed, in timestamp
format.


=head2 LastModifiedUser => Str

  The Amazon Resource Name (ARN) of the user who made the most recent
changes to the approval rule.


=head2 OriginApprovalRuleTemplate => L<Paws::CodeCommit::OriginApprovalRuleTemplate>

  The approval rule template used to create the rule.


=head2 RuleContentSha256 => Str

  The SHA-256 hash signature for the content of the approval rule.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
