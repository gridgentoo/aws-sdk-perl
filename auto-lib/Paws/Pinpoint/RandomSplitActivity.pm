package Paws::Pinpoint::RandomSplitActivity;
  use Moose;
  has Branches => (is => 'ro', isa => 'ArrayRef[Paws::Pinpoint::RandomSplitEntry]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::RandomSplitActivity

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::RandomSplitActivity object:

  $service_obj->Method(Att1 => { Branches => $value, ..., Branches => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::RandomSplitActivity object:

  $result = $service_obj->Method(...);
  $result->Att1->Branches

=head1 DESCRIPTION

Specifies the settings for a random split activity in a journey. This
type of activity randomly sends specified percentages of participants
down one of as many as five paths in a journey, based on conditions
that you specify.

=head1 ATTRIBUTES


=head2 Branches => ArrayRef[L<Paws::Pinpoint::RandomSplitEntry>]

  The paths for the activity, including the percentage of participants to
enter each path and the activity to perform for each path.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

