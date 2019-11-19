# Generated from callargs_class.tt

package Paws::IAM::ListAttachedRolePolicies;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::IAM::Types qw//;
  has Marker => (is => 'ro', isa => Str, predicate => 1);
  has MaxItems => (is => 'ro', isa => Int, predicate => 1);
  has PathPrefix => (is => 'ro', isa => Str, predicate => 1);
  has RoleName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListAttachedRolePolicies');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IAM::ListAttachedRolePoliciesResponse');
  class_has _result_key => (isa => Str, is => 'ro', default => 'ListAttachedRolePoliciesResult');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'RoleName' => 1
                  },
  'types' => {
               'MaxItems' => {
                               'type' => 'Int'
                             },
               'RoleName' => {
                               'type' => 'Str'
                             },
               'Marker' => {
                             'type' => 'Str'
                           },
               'PathPrefix' => {
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

Paws::IAM::ListAttachedRolePolicies - Arguments for method ListAttachedRolePolicies on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAttachedRolePolicies on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method ListAttachedRolePolicies.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAttachedRolePolicies.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    my $ListAttachedRolePoliciesResponse = $iam->ListAttachedRolePolicies(
      RoleName   => 'MyroleNameType',
      Marker     => 'MymarkerType',        # OPTIONAL
      MaxItems   => 1,                     # OPTIONAL
      PathPrefix => 'MypolicyPathType',    # OPTIONAL
    );

    # Results:
    my $AttachedPolicies = $ListAttachedRolePoliciesResponse->AttachedPolicies;
    my $IsTruncated      = $ListAttachedRolePoliciesResponse->IsTruncated;
    my $Marker           = $ListAttachedRolePoliciesResponse->Marker;

    # Returns a L<Paws::IAM::ListAttachedRolePoliciesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/ListAttachedRolePolicies>

=head1 ATTRIBUTES


=head2 Marker => Str

Use this parameter only when paginating results and only after you
receive a response indicating that the results are truncated. Set it to
the value of the C<Marker> element in the response that you received to
indicate where the next call should start.



=head2 MaxItems => Int

Use this only when paginating results to indicate the maximum number of
items you want in the response. If additional items exist beyond the
maximum you specify, the C<IsTruncated> response element is C<true>.

If you do not include this parameter, the number of items defaults to
100. Note that IAM might return fewer results, even when there are more
results available. In that case, the C<IsTruncated> response element
returns C<true>, and C<Marker> contains a value to include in the
subsequent call that tells the service where to continue from.



=head2 PathPrefix => Str

The path prefix for filtering the results. This parameter is optional.
If it is not included, it defaults to a slash (/), listing all
policies.

This parameter allows (through its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters consisting of
either a forward slash (/) by itself or a string that must begin and
end with forward slashes. In addition, it can contain any ASCII
character from the ! (\u0021) through the DEL character (\u007F),
including most punctuation characters, digits, and upper and lowercased
letters.



=head2 B<REQUIRED> RoleName => Str

The name (friendly name, not ARN) of the role to list attached policies
for.

This parameter allows (through its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters consisting of
upper and lowercase alphanumeric characters with no spaces. You can
also include any of the following characters: _+=,.@-




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAttachedRolePolicies in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

