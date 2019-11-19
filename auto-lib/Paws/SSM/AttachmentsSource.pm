# Generated from default/object.tt
package Paws::SSM::AttachmentsSource;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::SSM::Types qw//;
  has Key => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has Values => (is => 'ro', isa => ArrayRef[Str|Undef]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         },
               'Key' => {
                          'type' => 'Str'
                        },
               'Values' => {
                             'type' => 'ArrayRef[Str|Undef]'
                           }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::AttachmentsSource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::AttachmentsSource object:

  $service_obj->Method(Att1 => { Key => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::AttachmentsSource object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

Identifying information about a document attachment, including the file
name and a key-value pair that identifies the location of an attachment
to a document.

=head1 ATTRIBUTES


=head2 Key => Str

  The key of a key-value pair that identifies the location of an
attachment to a document.


=head2 Name => Str

  The name of the document attachment file.


=head2 Values => ArrayRef[Str|Undef]

  The value of a key-value pair that identifies the location of an
attachment to a document. The format is the URL of the location of a
document attachment, such as the URL of an Amazon S3 bucket.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

