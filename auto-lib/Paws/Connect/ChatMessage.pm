package Paws::Connect::ChatMessage;
  use Moose;
  has Content => (is => 'ro', isa => 'Str', required => 1);
  has ContentType => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ChatMessage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Connect::ChatMessage object:

  $service_obj->Method(Att1 => { Content => $value, ..., ContentType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Connect::ChatMessage object:

  $result = $service_obj->Method(...);
  $result->Att1->Content

=head1 DESCRIPTION

A chat message.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Content => Str

  The content of the chat message.


=head2 B<REQUIRED> ContentType => Str

  The type of the content. Supported types are text/plain.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

