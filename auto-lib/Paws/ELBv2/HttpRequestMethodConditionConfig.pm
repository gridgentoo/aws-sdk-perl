package Paws::ELBv2::HttpRequestMethodConditionConfig;
  use Moose;
  has Values => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::HttpRequestMethodConditionConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ELBv2::HttpRequestMethodConditionConfig object:

  $service_obj->Method(Att1 => { Values => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ELBv2::HttpRequestMethodConditionConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->Values

=head1 DESCRIPTION

Information about an HTTP method condition.

HTTP defines a set of request methods, also referred to as HTTP verbs.
For more information, see the HTTP Method Registry
(https://www.iana.org/assignments/http-methods/http-methods.xhtml). You
can also define custom HTTP methods.

=head1 ATTRIBUTES


=head2 Values => ArrayRef[Str|Undef]

  The name of the request method. The maximum size is 40 characters. The
allowed characters are A-Z, hyphen (-), and underscore (_). The
comparison is case sensitive. Wildcards are not supported; therefore,
the method name must be an exact match.

If you specify multiple strings, the condition is satisfied if one of
the strings matches the HTTP request method. We recommend that you
route GET and HEAD requests in the same way, because the response to a
HEAD request may be cached.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

