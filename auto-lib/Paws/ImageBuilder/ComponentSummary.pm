package Paws::ImageBuilder::ComponentSummary;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has ChangeDescription => (is => 'ro', isa => 'Str', request_name => 'changeDescription', traits => ['NameInRequest']);
  has DateCreated => (is => 'ro', isa => 'Str', request_name => 'dateCreated', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Owner => (is => 'ro', isa => 'Str', request_name => 'owner', traits => ['NameInRequest']);
  has Platform => (is => 'ro', isa => 'Str', request_name => 'platform', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'Paws::ImageBuilder::TagMap', request_name => 'tags', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);
  has Version => (is => 'ro', isa => 'Str', request_name => 'version', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::ComponentSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ImageBuilder::ComponentSummary object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ImageBuilder::ComponentSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

A high-level summary of a component.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the component.


=head2 ChangeDescription => Str

  The change description of the component.


=head2 DateCreated => Str

  The date that the component was created.


=head2 Description => Str

  The description of the component.


=head2 Name => Str

  The name of the component.


=head2 Owner => Str

  The owner of the component.


=head2 Platform => Str

  The platform of the component.


=head2 Tags => L<Paws::ImageBuilder::TagMap>

  The tags associated with the component.


=head2 Type => Str

  The type of the component denotes whether the component is used to
build the image or only to test it.


=head2 Version => Str

  The version of the component.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

