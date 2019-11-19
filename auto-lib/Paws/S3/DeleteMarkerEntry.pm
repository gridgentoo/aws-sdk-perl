# Generated from default/object.tt
package Paws::S3::DeleteMarkerEntry;
  use Moo;
  use Types::Standard qw/Bool Str/;
  use Paws::S3::Types qw/S3_Owner/;
  has IsLatest => (is => 'ro', isa => Bool);
  has Key => (is => 'ro', isa => Str);
  has LastModified => (is => 'ro', isa => Str);
  has Owner => (is => 'ro', isa => S3_Owner);
  has VersionId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'IsLatest' => {
                               'type' => 'Bool'
                             },
               'Key' => {
                          'type' => 'Str'
                        },
               'Owner' => {
                            'type' => 'S3_Owner',
                            'class' => 'Paws::S3::Owner'
                          },
               'VersionId' => {
                                'type' => 'Str'
                              },
               'LastModified' => {
                                   'type' => 'Str'
                                 }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::DeleteMarkerEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::DeleteMarkerEntry object:

  $service_obj->Method(Att1 => { IsLatest => $value, ..., VersionId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::DeleteMarkerEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->IsLatest

=head1 DESCRIPTION

Information about the delete marker.

=head1 ATTRIBUTES


=head2 IsLatest => Bool

  Specifies whether the object is (true) or is not (false) the latest
version of an object.


=head2 Key => Str

  The object key.


=head2 LastModified => Str

  Date and time the object was last modified.


=head2 Owner => S3_Owner

  The account that created the delete marker.E<gt>


=head2 VersionId => Str

  Version ID of an object.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

