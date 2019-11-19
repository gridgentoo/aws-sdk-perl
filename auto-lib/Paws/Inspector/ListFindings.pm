# Generated from json/callargs_class.tt

package Paws::Inspector::ListFindings;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef Int/;
  use Paws::Inspector::Types qw/Inspector_FindingFilter/;
  has AssessmentRunArns => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has Filter => (is => 'ro', isa => Inspector_FindingFilter, predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListFindings');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Inspector::ListFindingsResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AssessmentRunArns' => {
                                        'type' => 'ArrayRef[Str|Undef]'
                                      },
               'Filter' => {
                             'class' => 'Paws::Inspector::FindingFilter',
                             'type' => 'Inspector_FindingFilter'
                           },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               }
             },
  'NameInRequest' => {
                       'AssessmentRunArns' => 'assessmentRunArns',
                       'NextToken' => 'nextToken',
                       'MaxResults' => 'maxResults',
                       'Filter' => 'filter'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::ListFindings - Arguments for method ListFindings on L<Paws::Inspector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListFindings on the
L<Amazon Inspector|Paws::Inspector> service. Use the attributes of this class
as arguments to method ListFindings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListFindings.

=head1 SYNOPSIS

    my $inspector = Paws->service('Inspector');
   # List findings
   # Lists findings that are generated by the assessment runs that are specified
   # by the ARNs of the assessment runs.
    my $ListFindingsResponse = $inspector->ListFindings(
      'AssessmentRunArns' => [
'arn:aws:inspector:us-west-2:123456789012:target/0-0kFIPusq/template/0-4r1V2mAw/run/0-MKkpXXPE'
      ],
      'MaxResults' => 123
    );

    # Results:
    my $findingArns = $ListFindingsResponse->findingArns;
    my $nextToken   = $ListFindingsResponse->nextToken;

    # Returns a L<Paws::Inspector::ListFindingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector/ListFindings>

=head1 ATTRIBUTES


=head2 AssessmentRunArns => ArrayRef[Str|Undef]

The ARNs of the assessment runs that generate the findings that you
want to list.



=head2 Filter => Inspector_FindingFilter

You can use this parameter to specify a subset of data to be included
in the action's response.

For a record to match a filter, all specified filter attributes must
match. When multiple values are specified for a filter attribute, any
of the values can match.



=head2 MaxResults => Int

You can use this parameter to indicate the maximum number of items you
want in the response. The default value is 10. The maximum value is
500.



=head2 NextToken => Str

You can use this parameter when paginating results. Set the value of
this parameter to null on your first call to the B<ListFindings>
action. Subsequent calls to the action fill B<nextToken> in the request
with the value of B<NextToken> from the previous response to continue
listing data.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListFindings in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

