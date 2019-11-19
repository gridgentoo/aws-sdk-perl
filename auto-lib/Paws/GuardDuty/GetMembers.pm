
package Paws::GuardDuty::GetMembers;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::GuardDuty::Types qw//;
  has AccountIds => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1, predicate => 1);
  has DetectorId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetMembers');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/detector/{detectorId}/member/get');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::GuardDuty::GetMembersResponse');

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'AccountIds' => 'accountIds'
                     },
  'IsRequired' => {
                    'DetectorId' => 1,
                    'AccountIds' => 1
                  },
  'types' => {
               'DetectorId' => {
                                 'type' => 'Str'
                               },
               'AccountIds' => {
                                 'type' => 'ArrayRef[Str|Undef]'
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

Paws::GuardDuty::GetMembers - Arguments for method GetMembers on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMembers on the
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method GetMembers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMembers.

=head1 SYNOPSIS

    my $guardduty = Paws->service('GuardDuty');
    my $GetMembersResponse = $guardduty->GetMembers(
      AccountIds => [
        'MyAccountId', ...    # min: 12, max: 12
      ],
      DetectorId => 'MyDetectorId',

    );

    # Results:
    my $Members             = $GetMembersResponse->Members;
    my $UnprocessedAccounts = $GetMembersResponse->UnprocessedAccounts;

    # Returns a L<Paws::GuardDuty::GetMembersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/guardduty/GetMembers>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountIds => ArrayRef[Str|Undef]

A list of account IDs of the GuardDuty member accounts that you want to
describe.



=head2 B<REQUIRED> DetectorId => Str

The unique ID of the detector of the GuardDuty account whose members
you want to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMembers in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

