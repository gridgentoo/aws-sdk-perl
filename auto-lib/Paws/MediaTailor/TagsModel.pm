# Generated from default/object.tt
package Paws::MediaTailor::TagsModel;
  use Moo;
  use Types::Standard qw//;
  use Paws::MediaTailor::Types qw/MediaTailor___mapOf__string/;
  has Tags => (is => 'ro', isa => MediaTailor___mapOf__string, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Tags' => {
                           'type' => 'MediaTailor___mapOf__string',
                           'class' => 'Paws::MediaTailor::__mapOf__string'
                         }
             },
  'NameInRequest' => {
                       'Tags' => 'tags'
                     },
  'IsRequired' => {
                    'Tags' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::TagsModel

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaTailor::TagsModel object:

  $service_obj->Method(Att1 => { Tags => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaTailor::TagsModel object:

  $result = $service_obj->Method(...);
  $result->Att1->Tags

=head1 DESCRIPTION

A set of tags assigned to a resource.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Tags => MediaTailor___mapOf__string

  A comma-separated list of tag key:value pairs. For example: { "Key1":
"Value1", "Key2": "Value2" }



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaTailor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

