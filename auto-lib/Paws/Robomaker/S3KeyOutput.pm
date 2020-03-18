package Paws::Robomaker::S3KeyOutput;
  use Moose;
  has Etag => (is => 'ro', isa => 'Str', request_name => 'etag', traits => ['NameInRequest']);
  has S3Key => (is => 'ro', isa => 'Str', request_name => 's3Key', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::S3KeyOutput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Robomaker::S3KeyOutput object:

  $service_obj->Method(Att1 => { Etag => $value, ..., S3Key => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Robomaker::S3KeyOutput object:

  $result = $service_obj->Method(...);
  $result->Att1->Etag

=head1 DESCRIPTION

Information about S3 keys.

=head1 ATTRIBUTES


=head2 Etag => Str

  The etag for the object.


=head2 S3Key => Str

  The S3 key.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

