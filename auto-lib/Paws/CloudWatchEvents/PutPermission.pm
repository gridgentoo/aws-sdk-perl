# Generated from json/callargs_class.tt

package Paws::CloudWatchEvents::PutPermission;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudWatchEvents::Types qw/CloudWatchEvents_Condition/;
  has Action => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Condition => (is => 'ro', isa => CloudWatchEvents_Condition, predicate => 1);
  has EventBusName => (is => 'ro', isa => Str, predicate => 1);
  has Principal => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has StatementId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutPermission');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Action' => 1,
                    'StatementId' => 1,
                    'Principal' => 1
                  },
  'types' => {
               'StatementId' => {
                                  'type' => 'Str'
                                },
               'Principal' => {
                                'type' => 'Str'
                              },
               'Condition' => {
                                'type' => 'CloudWatchEvents_Condition',
                                'class' => 'Paws::CloudWatchEvents::Condition'
                              },
               'Action' => {
                             'type' => 'Str'
                           },
               'EventBusName' => {
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

Paws::CloudWatchEvents::PutPermission - Arguments for method PutPermission on L<Paws::CloudWatchEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutPermission on the
L<Amazon EventBridge|Paws::CloudWatchEvents> service. Use the attributes of this class
as arguments to method PutPermission.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutPermission.

=head1 SYNOPSIS

    my $events = Paws->service('CloudWatchEvents');
    $events->PutPermission(
      Action      => 'MyAction',
      Principal   => 'MyPrincipal',
      StatementId => 'MyStatementId',
      Condition   => {
        Key   => 'MyString',
        Type  => 'MyString',
        Value => 'MyString',

      },    # OPTIONAL
      EventBusName => 'MyNonPartnerEventBusName',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/events/PutPermission>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Action => Str

The action that you're enabling the other account to perform.
Currently, this must be C<events:PutEvents>.



=head2 Condition => CloudWatchEvents_Condition

This parameter enables you to limit the permission to accounts that
fulfill a certain condition, such as being a member of a certain AWS
organization. For more information about AWS Organizations, see What Is
AWS Organizations?
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_introduction.html)
in the I<AWS Organizations User Guide>.

If you specify C<Condition> with an AWS organization ID and specify "*"
as the value for C<Principal>, you grant permission to all the accounts
in the named organization.

The C<Condition> is a JSON string that must contain C<Type>, C<Key>,
and C<Value> fields.



=head2 EventBusName => Str

The event bus associated with the rule. If you omit this, the default
event bus is used.



=head2 B<REQUIRED> Principal => Str

The 12-digit AWS account ID that you are permitting to put events to
your default event bus. Specify "*" to permit any account to put events
to your default event bus.

If you specify "*" without specifying C<Condition>, avoid creating
rules that might match undesirable events. To create more secure rules,
make sure that the event pattern for each rule contains an C<account>
field with a specific account ID to receive events from. Rules that
have an account field match events sent only from accounts that are
listed in the rule's C<account> field.



=head2 B<REQUIRED> StatementId => Str

An identifier string for the external account that you're granting
permissions to. If you later want to revoke the permission for this
external account, specify this C<StatementId> when you run
RemovePermission.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutPermission in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

