# Generated from json/callargs_class.tt

package Paws::CodeCommit::UpdateDefaultBranch;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeCommit::Types qw//;
  has DefaultBranchName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has RepositoryName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateDefaultBranch');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RepositoryName' => {
                                     'type' => 'Str'
                                   },
               'DefaultBranchName' => {
                                        'type' => 'Str'
                                      }
             },
  'NameInRequest' => {
                       'DefaultBranchName' => 'defaultBranchName',
                       'RepositoryName' => 'repositoryName'
                     },
  'IsRequired' => {
                    'RepositoryName' => 1,
                    'DefaultBranchName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::UpdateDefaultBranch - Arguments for method UpdateDefaultBranch on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDefaultBranch on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method UpdateDefaultBranch.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDefaultBranch.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    $codecommit->UpdateDefaultBranch(
      DefaultBranchName => 'MyBranchName',
      RepositoryName    => 'MyRepositoryName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/UpdateDefaultBranch>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DefaultBranchName => Str

The name of the branch to set as the default.



=head2 B<REQUIRED> RepositoryName => Str

The name of the repository to set or change the default branch for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDefaultBranch in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

