package Paws::KinesisAnalyticsV2::CheckpointConfigurationDescription;
  use Moose;
  has CheckpointingEnabled => (is => 'ro', isa => 'Bool');
  has CheckpointInterval => (is => 'ro', isa => 'Int');
  has ConfigurationType => (is => 'ro', isa => 'Str');
  has MinPauseBetweenCheckpoints => (is => 'ro', isa => 'Int');

1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::CheckpointConfigurationDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalyticsV2::CheckpointConfigurationDescription object:

  $service_obj->Method(Att1 => { CheckpointingEnabled => $value, ..., MinPauseBetweenCheckpoints => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalyticsV2::CheckpointConfigurationDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->CheckpointingEnabled

=head1 DESCRIPTION

Describes checkpointing parameters for a Java-based Amazon Kinesis Data
Analytics application.

=head1 ATTRIBUTES


=head2 CheckpointingEnabled => Bool

  Describes whether checkpointing is enabled for a Java-based Kinesis
Data Analytics application.

If C<CheckpointConfiguration.ConfigurationType> is C<DEFAULT>, the
application will use a C<CheckpointingEnabled> value of C<true>, even
if this value is set to another value using this API or in application
code.


=head2 CheckpointInterval => Int

  Describes the interval in milliseconds between checkpoint operations.

If C<CheckpointConfiguration.ConfigurationType> is C<DEFAULT>, the
application will use a C<CheckpointInterval> vaue of 60000, even if
this value is set to another value using this API or in application
code.


=head2 ConfigurationType => Str

  Describes whether the application uses the default checkpointing
behavior in Kinesis Data Analytics.

If this value is set to C<DEFAULT>, the application will use the
following values, even if they are set to other values using APIs or
application code:

=over

=item *

B<CheckpointingEnabled:> true

=item *

B<CheckpointInterval:> 60000

=item *

B<MinPauseBetweenCheckpoints:> 5000

=back



=head2 MinPauseBetweenCheckpoints => Int

  Describes the minimum time in milliseconds after a checkpoint operation
completes that a new checkpoint operation can start.

If C<CheckpointConfiguration.ConfigurationType> is C<DEFAULT>, the
application will use a C<MinPauseBetweenCheckpoints> value of 5000,
even if this value is set using this API or in application code.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

