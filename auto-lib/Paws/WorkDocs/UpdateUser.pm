
package Paws::WorkDocs::UpdateUser;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WorkDocs::Types qw/WorkDocs_StorageRuleType/;
  has AuthenticationToken => (is => 'ro', isa => Str, predicate => 1);
  has GivenName => (is => 'ro', isa => Str, predicate => 1);
  has GrantPoweruserPrivileges => (is => 'ro', isa => Str, predicate => 1);
  has Locale => (is => 'ro', isa => Str, predicate => 1);
  has StorageRule => (is => 'ro', isa => WorkDocs_StorageRuleType, predicate => 1);
  has Surname => (is => 'ro', isa => Str, predicate => 1);
  has TimeZoneId => (is => 'ro', isa => Str, predicate => 1);
  has Type => (is => 'ro', isa => Str, predicate => 1);
  has UserId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateUser');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/api/v1/users/{UserId}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PATCH');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::WorkDocs::UpdateUserResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'UserId' => 'UserId'
                  },
  'types' => {
               'AuthenticationToken' => {
                                          'type' => 'Str'
                                        },
               'Locale' => {
                             'type' => 'Str'
                           },
               'TimeZoneId' => {
                                 'type' => 'Str'
                               },
               'StorageRule' => {
                                  'class' => 'Paws::WorkDocs::StorageRuleType',
                                  'type' => 'WorkDocs_StorageRuleType'
                                },
               'Type' => {
                           'type' => 'Str'
                         },
               'GrantPoweruserPrivileges' => {
                                               'type' => 'Str'
                                             },
               'UserId' => {
                             'type' => 'Str'
                           },
               'Surname' => {
                              'type' => 'Str'
                            },
               'GivenName' => {
                                'type' => 'Str'
                              }
             },
  'IsRequired' => {
                    'UserId' => 1
                  },
  'ParamInHeader' => {
                       'AuthenticationToken' => 'Authentication'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::UpdateUser - Arguments for method UpdateUser on L<Paws::WorkDocs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateUser on the
L<Amazon WorkDocs|Paws::WorkDocs> service. Use the attributes of this class
as arguments to method UpdateUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateUser.

=head1 SYNOPSIS

    my $workdocs = Paws->service('WorkDocs');
    my $UpdateUserResponse = $workdocs->UpdateUser(
      UserId                   => 'MyIdType',
      AuthenticationToken      => 'MyAuthenticationHeaderType',    # OPTIONAL
      GivenName                => 'MyUserAttributeValueType',      # OPTIONAL
      GrantPoweruserPrivileges => 'TRUE',                          # OPTIONAL
      Locale                   => 'en',                            # OPTIONAL
      StorageRule              => {
        StorageAllocatedInBytes => 1,                              # OPTIONAL
        StorageType => 'UNLIMITED',    # values: UNLIMITED, QUOTA; OPTIONAL
      },    # OPTIONAL
      Surname    => 'MyUserAttributeValueType',    # OPTIONAL
      TimeZoneId => 'MyTimeZoneIdType',            # OPTIONAL
      Type       => 'USER',                        # OPTIONAL
    );

    # Results:
    my $User = $UpdateUserResponse->User;

    # Returns a L<Paws::WorkDocs::UpdateUserResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workdocs/UpdateUser>

=head1 ATTRIBUTES


=head2 AuthenticationToken => Str

Amazon WorkDocs authentication token. Do not set this field when using
administrative API actions, as in accessing the API using AWS
credentials.



=head2 GivenName => Str

The given name of the user.



=head2 GrantPoweruserPrivileges => Str

Boolean value to determine whether the user is granted Poweruser
privileges.

Valid values are: C<"TRUE">, C<"FALSE">

=head2 Locale => Str

The locale of the user.

Valid values are: C<"en">, C<"fr">, C<"ko">, C<"de">, C<"es">, C<"ja">, C<"ru">, C<"zh_CN">, C<"zh_TW">, C<"pt_BR">, C<"default">

=head2 StorageRule => WorkDocs_StorageRuleType

The amount of storage for the user.



=head2 Surname => Str

The surname of the user.



=head2 TimeZoneId => Str

The time zone ID of the user.



=head2 Type => Str

The type of the user.

Valid values are: C<"USER">, C<"ADMIN">, C<"POWERUSER">, C<"MINIMALUSER">, C<"WORKSPACESUSER">

=head2 B<REQUIRED> UserId => Str

The ID of the user.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateUser in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

