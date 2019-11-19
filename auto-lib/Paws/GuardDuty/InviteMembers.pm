
package Paws::GuardDuty::InviteMembers;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef Bool/;
  use Paws::GuardDuty::Types qw//;
  has AccountIds => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1, predicate => 1);
  has DetectorId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DisableEmailNotification => (is => 'ro', isa => Bool, predicate => 1);
  has Message => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'InviteMembers');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/detector/{detectorId}/member/invite');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::GuardDuty::InviteMembersResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DisableEmailNotification' => {
                                               'type' => 'Bool'
                                             },
               'AccountIds' => {
                                 'type' => 'ArrayRef[Str|Undef]'
                               },
               'Message' => {
                              'type' => 'Str'
                            },
               'DetectorId' => {
                                 'type' => 'Str'
                               }
             },
  'NameInRequest' => {
                       'AccountIds' => 'accountIds',
                       'Message' => 'message',
                       'DisableEmailNotification' => 'disableEmailNotification'
                     },
  'IsRequired' => {
                    'DetectorId' => 1,
                    'AccountIds' => 1
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

Paws::GuardDuty::InviteMembers - Arguments for method InviteMembers on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method InviteMembers on the
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method InviteMembers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to InviteMembers.

=head1 SYNOPSIS

    my $guardduty = Paws->service('GuardDuty');
    my $InviteMembersResponse = $guardduty->InviteMembers(
      AccountIds => [
        'MyAccountId', ...    # min: 12, max: 12
      ],
      DetectorId               => 'MyDetectorId',
      DisableEmailNotification => 1,                # OPTIONAL
      Message                  => 'MyString',       # OPTIONAL
    );

    # Results:
    my $UnprocessedAccounts = $InviteMembersResponse->UnprocessedAccounts;

    # Returns a L<Paws::GuardDuty::InviteMembersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/guardduty/InviteMembers>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountIds => ArrayRef[Str|Undef]

A list of account IDs of the accounts that you want to invite to
GuardDuty as members.



=head2 B<REQUIRED> DetectorId => Str

The unique ID of the detector of the GuardDuty account with which you
want to invite members.



=head2 DisableEmailNotification => Bool

A boolean value that specifies whether you want to disable email
notification to the accounts that youE<rsquo>re inviting to GuardDuty
as members.



=head2 Message => Str

The invitation message that you want to send to the accounts that
youE<rsquo>re inviting to GuardDuty as members.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method InviteMembers in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

