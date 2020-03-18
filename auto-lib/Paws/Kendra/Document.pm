package Paws::Kendra::Document;
  use Moose;
  has AccessControlList => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::Principal]');
  has Attributes => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::DocumentAttribute]');
  has Blob => (is => 'ro', isa => 'Str');
  has ContentType => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has S3Path => (is => 'ro', isa => 'Paws::Kendra::S3Path');
  has Title => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::Document

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kendra::Document object:

  $service_obj->Method(Att1 => { AccessControlList => $value, ..., Title => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kendra::Document object:

  $result = $service_obj->Method(...);
  $result->Att1->AccessControlList

=head1 DESCRIPTION

A document in an index.

=head1 ATTRIBUTES


=head2 AccessControlList => ArrayRef[L<Paws::Kendra::Principal>]

  Information to use for user context filtering.


=head2 Attributes => ArrayRef[L<Paws::Kendra::DocumentAttribute>]

  Custom attributes to apply to the document. Use the custom attributes
to provide additional information for searching, to provide facets for
refining searches, and to provide additional information in the query
response.


=head2 Blob => Str

  The contents of the document as a base-64 encoded string.


=head2 ContentType => Str

  The file type of the document in the C<Blob> field.


=head2 B<REQUIRED> Id => Str

  A unique identifier of the document in the index.


=head2 S3Path => L<Paws::Kendra::S3Path>

  


=head2 Title => Str

  The title of the document.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

