package Paws::Pinpoint::ConditionalSplitActivity;
  use Moose;
  has Condition => (is => 'ro', isa => 'Paws::Pinpoint::Condition');
  has EvaluationWaitTime => (is => 'ro', isa => 'Paws::Pinpoint::WaitTime');
  has FalseActivity => (is => 'ro', isa => 'Str');
  has TrueActivity => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::ConditionalSplitActivity

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::ConditionalSplitActivity object:

  $service_obj->Method(Att1 => { Condition => $value, ..., TrueActivity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::ConditionalSplitActivity object:

  $result = $service_obj->Method(...);
  $result->Att1->Condition

=head1 DESCRIPTION

Specifies the settings for a yes/no split activity in a journey. This
type of activity sends participants down one of two paths in a journey,
based on conditions that you specify.

=head1 ATTRIBUTES


=head2 Condition => L<Paws::Pinpoint::Condition>

  The conditions that define the paths for the activity, and the
relationship between the conditions.


=head2 EvaluationWaitTime => L<Paws::Pinpoint::WaitTime>

  The amount of time to wait before determining whether the conditions
are met, or the date and time when Amazon Pinpoint determines whether
the conditions are met.


=head2 FalseActivity => Str

  The unique identifier for the activity to perform if the conditions
aren't met.


=head2 TrueActivity => Str

  The unique identifier for the activity to perform if the conditions are
met.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

