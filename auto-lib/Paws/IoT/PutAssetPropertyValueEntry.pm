package Paws::IoT::PutAssetPropertyValueEntry;
  use Moose;
  has AssetId => (is => 'ro', isa => 'Str', request_name => 'assetId', traits => ['NameInRequest']);
  has EntryId => (is => 'ro', isa => 'Str', request_name => 'entryId', traits => ['NameInRequest']);
  has PropertyAlias => (is => 'ro', isa => 'Str', request_name => 'propertyAlias', traits => ['NameInRequest']);
  has PropertyId => (is => 'ro', isa => 'Str', request_name => 'propertyId', traits => ['NameInRequest']);
  has PropertyValues => (is => 'ro', isa => 'ArrayRef[Paws::IoT::AssetPropertyValue]', request_name => 'propertyValues', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::PutAssetPropertyValueEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::PutAssetPropertyValueEntry object:

  $service_obj->Method(Att1 => { AssetId => $value, ..., PropertyValues => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::PutAssetPropertyValueEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->AssetId

=head1 DESCRIPTION

An asset property value entry containing the following information.

=head1 ATTRIBUTES


=head2 AssetId => Str

  The ID of the AWS IoT SiteWise asset. You must specify either a
C<propertyAlias> or both an C<aliasId> and a C<propertyId>. Accepts
substitution templates.


=head2 EntryId => Str

  Optional. A unique identifier for this entry that you can define to
better track which message caused an error in case of failure. Accepts
substitution templates. Defaults to a new UUID.


=head2 PropertyAlias => Str

  The name of the property alias associated with your asset property. You
must specify either a C<propertyAlias> or both an C<aliasId> and a
C<propertyId>. Accepts substitution templates.


=head2 PropertyId => Str

  The ID of the asset's property. You must specify either a
C<propertyAlias> or both an C<aliasId> and a C<propertyId>. Accepts
substitution templates.


=head2 B<REQUIRED> PropertyValues => ArrayRef[L<Paws::IoT::AssetPropertyValue>]

  A list of property values to insert that each contain timestamp,
quality, and value (TQV) information.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

