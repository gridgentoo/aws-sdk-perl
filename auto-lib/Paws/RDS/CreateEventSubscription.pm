# Generated from callargs_class.tt

package Paws::RDS::CreateEventSubscription;
  use Moo;
  use Types::Standard qw/Str Bool Undef ArrayRef/;
  use Paws::RDS::Types qw/RDS_Tag/;
  has Enabled => (is => 'ro', isa => Bool, predicate => 1);
  has EventCategories => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has SnsTopicArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has SourceIds => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has SourceType => (is => 'ro', isa => Str, predicate => 1);
  has SubscriptionName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[RDS_Tag], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateEventSubscription');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::RDS::CreateEventSubscriptionResult');
  class_has _result_key => (isa => Str, is => 'ro', default => 'CreateEventSubscriptionResult');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'SnsTopicArn' => 1,
                    'SubscriptionName' => 1
                  },
  'types' => {
               'SnsTopicArn' => {
                                  'type' => 'Str'
                                },
               'Enabled' => {
                              'type' => 'Bool'
                            },
               'SourceIds' => {
                                'type' => 'ArrayRef[Str|Undef]'
                              },
               'EventCategories' => {
                                      'type' => 'ArrayRef[Str|Undef]'
                                    },
               'Tags' => {
                           'class' => 'Paws::RDS::Tag',
                           'type' => 'ArrayRef[RDS_Tag]'
                         },
               'SubscriptionName' => {
                                       'type' => 'Str'
                                     },
               'SourceType' => {
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

Paws::RDS::CreateEventSubscription - Arguments for method CreateEventSubscription on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEventSubscription on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method CreateEventSubscription.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEventSubscription.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    # To create an event notification subscription
    # This example creates an event notification subscription.
    my $CreateEventSubscriptionResult = $rds->CreateEventSubscription(
      'Enabled'          => 1,
      'EventCategories'  => ['availability'],
      'SnsTopicArn'      => 'arn:aws:sns:us-east-1:992648334831:MyDemoSNSTopic',
      'SourceIds'        => ['mymysqlinstance'],
      'SourceType'       => 'db-instance',
      'SubscriptionName' => 'mymysqleventsubscription'
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/CreateEventSubscription>

=head1 ATTRIBUTES


=head2 Enabled => Bool

A value that indicates whether to activate the subscription. If the
event notification subscription isn't activated, the subscription is
created but not active.



=head2 EventCategories => ArrayRef[Str|Undef]

A list of event categories for a SourceType that you want to subscribe
to. You can see a list of the categories for a given SourceType in the
Events
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html)
topic in the I<Amazon RDS User Guide> or by using the
B<DescribeEventCategories> action.



=head2 B<REQUIRED> SnsTopicArn => Str

The Amazon Resource Name (ARN) of the SNS topic created for event
notification. The ARN is created by Amazon SNS when you create a topic
and subscribe to it.



=head2 SourceIds => ArrayRef[Str|Undef]

The list of identifiers of the event sources for which events are
returned. If not specified, then all sources are included in the
response. An identifier must begin with a letter and must contain only
ASCII letters, digits, and hyphens; it can't end with a hyphen or
contain two consecutive hyphens.

Constraints:

=over

=item *

If SourceIds are supplied, SourceType must also be provided.

=item *

If the source type is a DB instance, then a C<DBInstanceIdentifier>
must be supplied.

=item *

If the source type is a DB security group, a C<DBSecurityGroupName>
must be supplied.

=item *

If the source type is a DB parameter group, a C<DBParameterGroupName>
must be supplied.

=item *

If the source type is a DB snapshot, a C<DBSnapshotIdentifier> must be
supplied.

=back




=head2 SourceType => Str

The type of source that is generating the events. For example, if you
want to be notified of events generated by a DB instance, you would set
this parameter to db-instance. if this value isn't specified, all
events are returned.

Valid values: C<db-instance> | C<db-cluster> | C<db-parameter-group> |
C<db-security-group> | C<db-snapshot> | C<db-cluster-snapshot>



=head2 B<REQUIRED> SubscriptionName => Str

The name of the subscription.

Constraints: The name must be less than 255 characters.



=head2 Tags => ArrayRef[RDS_Tag]






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEventSubscription in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

