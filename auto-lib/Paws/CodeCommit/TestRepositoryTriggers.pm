# Generated from json/callargs_class.tt

package Paws::CodeCommit::TestRepositoryTriggers;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodeCommit::Types qw/CodeCommit_RepositoryTrigger/;
  has RepositoryName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Triggers => (is => 'ro', isa => ArrayRef[CodeCommit_RepositoryTrigger], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'TestRepositoryTriggers');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CodeCommit::TestRepositoryTriggersOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Triggers' => 'triggers',
                       'RepositoryName' => 'repositoryName'
                     },
  'IsRequired' => {
                    'RepositoryName' => 1,
                    'Triggers' => 1
                  },
  'types' => {
               'RepositoryName' => {
                                     'type' => 'Str'
                                   },
               'Triggers' => {
                               'class' => 'Paws::CodeCommit::RepositoryTrigger',
                               'type' => 'ArrayRef[CodeCommit_RepositoryTrigger]'
                             }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::TestRepositoryTriggers - Arguments for method TestRepositoryTriggers on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TestRepositoryTriggers on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method TestRepositoryTriggers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TestRepositoryTriggers.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    my $TestRepositoryTriggersOutput = $codecommit->TestRepositoryTriggers(
      RepositoryName => 'MyRepositoryName',
      Triggers       => [
        {
          DestinationArn => 'MyArn',
          Events         => [
            'all',
            ... # values: all, updateReference, createReference, deleteReference
          ],
          Name     => 'MyRepositoryTriggerName',
          Branches => [
            'MyBranchName', ...    # min: 1, max: 256
          ],                       # OPTIONAL
          CustomData => 'MyRepositoryTriggerCustomData',    # OPTIONAL
        },
        ...
      ],

    );

    # Results:
    my $FailedExecutions = $TestRepositoryTriggersOutput->FailedExecutions;
    my $SuccessfulExecutions =
      $TestRepositoryTriggersOutput->SuccessfulExecutions;

    # Returns a L<Paws::CodeCommit::TestRepositoryTriggersOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/TestRepositoryTriggers>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RepositoryName => Str

The name of the repository in which to test the triggers.



=head2 B<REQUIRED> Triggers => ArrayRef[CodeCommit_RepositoryTrigger]

The list of triggers to test.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TestRepositoryTriggers in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

