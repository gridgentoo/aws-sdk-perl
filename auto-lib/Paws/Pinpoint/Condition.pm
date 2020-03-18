package Paws::Pinpoint::Condition;
  use Moose;
  has Conditions => (is => 'ro', isa => 'ArrayRef[Paws::Pinpoint::SimpleCondition]');
  has Operator => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::Condition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::Condition object:

  $service_obj->Method(Att1 => { Conditions => $value, ..., Operator => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::Condition object:

  $result = $service_obj->Method(...);
  $result->Att1->Conditions

=head1 DESCRIPTION

Specifies the conditions to evaluate for an activity in a journey, and
how to evaluate those conditions.

=head1 ATTRIBUTES


=head2 Conditions => ArrayRef[L<Paws::Pinpoint::SimpleCondition>]

  The conditions to evaluate for the activity.


=head2 Operator => Str

  Specifies how to handle multiple conditions for the activity. For
example, if you specify two conditions for an activity, whether both or
only one of the conditions must be met for the activity to be
performed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

