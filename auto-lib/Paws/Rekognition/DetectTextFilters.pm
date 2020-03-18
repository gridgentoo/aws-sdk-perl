package Paws::Rekognition::DetectTextFilters;
  use Moose;
  has RegionsOfInterest => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::RegionOfInterest]');
  has WordFilter => (is => 'ro', isa => 'Paws::Rekognition::DetectionFilter');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::DetectTextFilters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::DetectTextFilters object:

  $service_obj->Method(Att1 => { RegionsOfInterest => $value, ..., WordFilter => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::DetectTextFilters object:

  $result = $service_obj->Method(...);
  $result->Att1->RegionsOfInterest

=head1 DESCRIPTION

A set of optional parameters that you can use to set the criteria that
the text must meet to be included in your response. C<WordFilter> looks
at a wordE<rsquo>s height, width, and minimum confidence.
C<RegionOfInterest> lets you set a specific region of the image to look
for text in.

=head1 ATTRIBUTES


=head2 RegionsOfInterest => ArrayRef[L<Paws::Rekognition::RegionOfInterest>]

  A Filter focusing on a certain area of the image. Uses a C<BoundingBox>
object to set the region of the image.


=head2 WordFilter => L<Paws::Rekognition::DetectionFilter>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

