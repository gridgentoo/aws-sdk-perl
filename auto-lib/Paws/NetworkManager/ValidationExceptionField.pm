package Paws::NetworkManager::ValidationExceptionField;
  use Moose;
  has Message => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::ValidationExceptionField

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::NetworkManager::ValidationExceptionField object:

  $service_obj->Method(Att1 => { Message => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::NetworkManager::ValidationExceptionField object:

  $result = $service_obj->Method(...);
  $result->Att1->Message

=head1 DESCRIPTION

Describes a validation exception for a field.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Message => Str

  The message for the field.


=head2 B<REQUIRED> Name => Str

  The name of the field.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

