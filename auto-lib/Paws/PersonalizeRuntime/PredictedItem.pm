package Paws::PersonalizeRuntime::PredictedItem;
  use Moose;
  has ItemId => (is => 'ro', isa => 'Str', request_name => 'itemId', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::PersonalizeRuntime::PredictedItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PersonalizeRuntime::PredictedItem object:

  $service_obj->Method(Att1 => { ItemId => $value, ..., ItemId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PersonalizeRuntime::PredictedItem object:

  $result = $service_obj->Method(...);
  $result->Att1->ItemId

=head1 DESCRIPTION

An object that identifies an item.

The and APIs return a list of C<PredictedItem>s.

=head1 ATTRIBUTES


=head2 ItemId => Str

  The recommended item ID.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PersonalizeRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

