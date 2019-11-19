# Generated from default/object.tt
package Paws::ServiceCatalog::ResourceDetail;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ServiceCatalog::Types qw//;
  has ARN => (is => 'ro', isa => Str);
  has CreatedTime => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has Id => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ARN' => {
                          'type' => 'Str'
                        },
               'Description' => {
                                  'type' => 'Str'
                                },
               'CreatedTime' => {
                                  'type' => 'Str'
                                },
               'Id' => {
                         'type' => 'Str'
                       },
               'Name' => {
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

Paws::ServiceCatalog::ResourceDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceCatalog::ResourceDetail object:

  $service_obj->Method(Att1 => { ARN => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceCatalog::ResourceDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->ARN

=head1 DESCRIPTION

Information about a resource.

=head1 ATTRIBUTES


=head2 ARN => Str

  The ARN of the resource.


=head2 CreatedTime => Str

  The creation time of the resource.


=head2 Description => Str

  The description of the resource.


=head2 Id => Str

  The identifier of the resource.


=head2 Name => Str

  The name of the resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

