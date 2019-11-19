# Generated from default/object.tt
package Paws::S3Control::S3Grant;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::S3Control::Types qw/S3Control_S3Grantee/;
  has Grantee => (is => 'ro', isa => S3Control_S3Grantee);
  has Permission => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Permission' => {
                                 'type' => 'Str'
                               },
               'Grantee' => {
                              'class' => 'Paws::S3Control::S3Grantee',
                              'type' => 'S3Control_S3Grantee'
                            }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::S3Grant

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3Control::S3Grant object:

  $service_obj->Method(Att1 => { Grantee => $value, ..., Permission => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3Control::S3Grant object:

  $result = $service_obj->Method(...);
  $result->Att1->Grantee

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Grantee => S3Control_S3Grantee

  


=head2 Permission => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

