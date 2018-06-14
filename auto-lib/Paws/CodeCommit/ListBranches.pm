
package Paws::CodeCommit::ListBranches;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListBranches');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCommit::ListBranchesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::ListBranches - Arguments for method ListBranches on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListBranches on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method ListBranches.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListBranches.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    my $ListBranchesOutput = $codecommit->ListBranches(
      RepositoryName => 'MyRepositoryName',
      NextToken      => 'MyNextToken',        # OPTIONAL
    );

    # Results:
    my $NextToken = $ListBranchesOutput->NextToken;
    my $Branches  = $ListBranchesOutput->Branches;

    # Returns a L<Paws::CodeCommit::ListBranchesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/ListBranches>

=head1 ATTRIBUTES


=head2 NextToken => Str

An enumeration token that allows the operation to batch the results.



=head2 B<REQUIRED> RepositoryName => Str

The name of the repository that contains the branches.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListBranches in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

