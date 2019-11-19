# Generated from default/object.tt
package Paws::S3::ObjectLockConfiguration;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::S3::Types qw/S3_ObjectLockRule/;
  has ObjectLockEnabled => (is => 'ro', isa => Str);
  has Rule => (is => 'ro', isa => S3_ObjectLockRule);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ObjectLockEnabled' => {
                                        'type' => 'Str'
                                      },
               'Rule' => {
                           'class' => 'Paws::S3::ObjectLockRule',
                           'type' => 'S3_ObjectLockRule'
                         }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::ObjectLockConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::ObjectLockConfiguration object:

  $service_obj->Method(Att1 => { ObjectLockEnabled => $value, ..., Rule => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::ObjectLockConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->ObjectLockEnabled

=head1 DESCRIPTION

The container element for Object Lock configuration parameters.

=head1 ATTRIBUTES


=head2 ObjectLockEnabled => Str

  Indicates whether this bucket has an Object Lock configuration enabled.


=head2 Rule => S3_ObjectLockRule

  The Object Lock rule in place for the specified object.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

