# Generated from default/object.tt
package Paws::S3::CopyObjectResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::S3::Types qw//;
  has ETag => (is => 'ro', isa => Str);
  has LastModified => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LastModified' => {
                                   'type' => 'Str'
                                 },
               'ETag' => {
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

Paws::S3::CopyObjectResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::CopyObjectResult object:

  $service_obj->Method(Att1 => { ETag => $value, ..., LastModified => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::CopyObjectResult object:

  $result = $service_obj->Method(...);
  $result->Att1->ETag

=head1 DESCRIPTION

E<gt>Container for all response elements.

=head1 ATTRIBUTES


=head2 ETag => Str

  Returns the ETag of the new object. The ETag reflects only changes to
the contents of an object, not its metadata. The source and destination
ETag is identical for a successfully copied object.


=head2 LastModified => Str

  Returns the date that the object was last modified.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

