package Paws::CodeGuruReviewer::RepositoryAssociation;
  use Moose;
  has AssociationArn => (is => 'ro', isa => 'Str');
  has AssociationId => (is => 'ro', isa => 'Str');
  has CreatedTimeStamp => (is => 'ro', isa => 'Str');
  has LastUpdatedTimeStamp => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Owner => (is => 'ro', isa => 'Str');
  has ProviderType => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has StateReason => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruReviewer::RepositoryAssociation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeGuruReviewer::RepositoryAssociation object:

  $service_obj->Method(Att1 => { AssociationArn => $value, ..., StateReason => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeGuruReviewer::RepositoryAssociation object:

  $result = $service_obj->Method(...);
  $result->Att1->AssociationArn

=head1 DESCRIPTION

Information about a repository association.

=head1 ATTRIBUTES


=head2 AssociationArn => Str

  The Amazon Resource Name (ARN) identifying the repository association.


=head2 AssociationId => Str

  The id of the repository association.


=head2 CreatedTimeStamp => Str

  The time, in milliseconds since the epoch, when the repository
association was created.


=head2 LastUpdatedTimeStamp => Str

  The time, in milliseconds since the epoch, when the repository
association was last updated.


=head2 Name => Str

  The name of the repository.


=head2 Owner => Str

  The owner of the repository.


=head2 ProviderType => Str

  The provider type of the repository association.


=head2 State => Str

  The state of the repository association.


=head2 StateReason => Str

  A description of why the repository association is in the current
state.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeGuruReviewer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

