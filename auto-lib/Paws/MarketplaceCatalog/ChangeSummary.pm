package Paws::MarketplaceCatalog::ChangeSummary;
  use Moose;
  has ChangeType => (is => 'ro', isa => 'Str');
  has Entity => (is => 'ro', isa => 'Paws::MarketplaceCatalog::Entity');
  has ErrorDetailList => (is => 'ro', isa => 'ArrayRef[Paws::MarketplaceCatalog::ErrorDetail]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceCatalog::ChangeSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MarketplaceCatalog::ChangeSummary object:

  $service_obj->Method(Att1 => { ChangeType => $value, ..., ErrorDetailList => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MarketplaceCatalog::ChangeSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->ChangeType

=head1 DESCRIPTION

This object is a container for common summary information about the
change. The summary doesn't contain the whole change structure.

=head1 ATTRIBUTES


=head2 ChangeType => Str

  The type of the change.


=head2 Entity => L<Paws::MarketplaceCatalog::Entity>

  The entity to be changed.


=head2 ErrorDetailList => ArrayRef[L<Paws::MarketplaceCatalog::ErrorDetail>]

  An array of C<ErrorDetail> objects associated with the change.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MarketplaceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
