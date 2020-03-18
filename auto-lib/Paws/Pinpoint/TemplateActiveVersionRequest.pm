package Paws::Pinpoint::TemplateActiveVersionRequest;
  use Moose;
  has Version => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::TemplateActiveVersionRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::TemplateActiveVersionRequest object:

  $service_obj->Method(Att1 => { Version => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::TemplateActiveVersionRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->Version

=head1 DESCRIPTION

Specifies which version of a message template to use as the active
version of the template.

=head1 ATTRIBUTES


=head2 Version => Str

  The unique identifier for the version of the message template to use as
the active version of the template. If specified, this value must match
the identifier for an existing template version. To retrieve a list of
versions and version identifiers for a template, use the

Template Versions resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

