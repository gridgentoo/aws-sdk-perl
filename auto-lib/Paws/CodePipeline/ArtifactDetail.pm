package Paws::CodePipeline::ArtifactDetail;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has S3location => (is => 'ro', isa => 'Paws::CodePipeline::S3Location', request_name => 's3location', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ArtifactDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::ArtifactDetail object:

  $service_obj->Method(Att1 => { Name => $value, ..., S3location => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::ArtifactDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Artifact details for the action execution, such as the artifact
location.

=head1 ATTRIBUTES


=head2 Name => Str

  The artifact object name for the action execution.


=head2 S3location => L<Paws::CodePipeline::S3Location>

  The Amazon S3 artifact location for the action execution.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

