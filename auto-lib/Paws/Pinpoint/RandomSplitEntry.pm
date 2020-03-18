package Paws::Pinpoint::RandomSplitEntry;
  use Moose;
  has NextActivity => (is => 'ro', isa => 'Str');
  has Percentage => (is => 'ro', isa => 'Int');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::RandomSplitEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::RandomSplitEntry object:

  $service_obj->Method(Att1 => { NextActivity => $value, ..., Percentage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::RandomSplitEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->NextActivity

=head1 DESCRIPTION

Specifies the settings for a path in a random split activity in a
journey.

=head1 ATTRIBUTES


=head2 NextActivity => Str

  The unique identifier for the next activity to perform, after
completing the activity for the path.


=head2 Percentage => Int

  The percentage of participants to send down the activity path.

To determine which participants are sent down each path, Amazon
Pinpoint applies a probability-based algorithm to the percentages that
you specify for the paths. Therefore, the actual percentage of
participants who are sent down a path may not be equal to the
percentage that you specify.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

