
package Paws::GuardDuty::UpdateFindingsFeedback;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::GuardDuty::Types qw//;
  has Comments => (is => 'ro', isa => Str, predicate => 1);
  has DetectorId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Feedback => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has FindingIds => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateFindingsFeedback');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/detector/{detectorId}/findings/feedback');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::GuardDuty::UpdateFindingsFeedbackResponse');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Feedback' => 1,
                    'FindingIds' => 1,
                    'DetectorId' => 1
                  },
  'NameInRequest' => {
                       'Comments' => 'comments',
                       'FindingIds' => 'findingIds',
                       'Feedback' => 'feedback'
                     },
  'types' => {
               'Comments' => {
                               'type' => 'Str'
                             },
               'DetectorId' => {
                                 'type' => 'Str'
                               },
               'FindingIds' => {
                                 'type' => 'ArrayRef[Str|Undef]'
                               },
               'Feedback' => {
                               'type' => 'Str'
                             }
             },
  'ParamInURI' => {
                    'DetectorId' => 'detectorId'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::UpdateFindingsFeedback - Arguments for method UpdateFindingsFeedback on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFindingsFeedback on the
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method UpdateFindingsFeedback.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFindingsFeedback.

=head1 SYNOPSIS

    my $guardduty = Paws->service('GuardDuty');
    my $UpdateFindingsFeedbackResponse = $guardduty->UpdateFindingsFeedback(
      DetectorId => 'MyDetectorId',
      Feedback   => 'USEFUL',
      FindingIds => [
        'MyFindingId', ...    # min: 1, max: 300
      ],
      Comments => 'MyString',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/guardduty/UpdateFindingsFeedback>

=head1 ATTRIBUTES


=head2 Comments => Str

Additional feedback about the GuardDuty findings.



=head2 B<REQUIRED> DetectorId => Str

The ID of the detector associated with the findings to update feedback
for.



=head2 B<REQUIRED> Feedback => Str

The feedback for the finding.

Valid values are: C<"USEFUL">, C<"NOT_USEFUL">

=head2 B<REQUIRED> FindingIds => ArrayRef[Str|Undef]

IDs of the findings that you want to mark as useful or not useful.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFindingsFeedback in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

