# Generated from json/callargs_class.tt

package Paws::SSM::DescribeAvailablePatches;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::SSM::Types qw/SSM_PatchOrchestratorFilter/;
  has Filters => (is => 'ro', isa => ArrayRef[SSM_PatchOrchestratorFilter], predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeAvailablePatches');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SSM::DescribeAvailablePatchesResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Filters' => {
                              'type' => 'ArrayRef[SSM_PatchOrchestratorFilter]',
                              'class' => 'Paws::SSM::PatchOrchestratorFilter'
                            },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeAvailablePatches - Arguments for method DescribeAvailablePatches on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAvailablePatches on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method DescribeAvailablePatches.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAvailablePatches.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $DescribeAvailablePatchesResult = $ssm->DescribeAvailablePatches(
      Filters => [
        {
          Key    => 'MyPatchOrchestratorFilterKey', # min: 1, max: 128; OPTIONAL
          Values => [
            'MyPatchOrchestratorFilterValue', ...    # min: 1, max: 256
          ],                                         # OPTIONAL
        },
        ...
      ],                                             # OPTIONAL
      MaxResults => 1,                               # OPTIONAL
      NextToken  => 'MyNextToken',                   # OPTIONAL
    );

    # Results:
    my $NextToken = $DescribeAvailablePatchesResult->NextToken;
    my $Patches   = $DescribeAvailablePatchesResult->Patches;

    # Returns a L<Paws::SSM::DescribeAvailablePatchesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/DescribeAvailablePatches>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[SSM_PatchOrchestratorFilter]

Filters used to scope down the returned patches.



=head2 MaxResults => Int

The maximum number of patches to return (per page).



=head2 NextToken => Str

The token for the next set of items to return. (You received this token
from a previous call.)




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAvailablePatches in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

