# Generated from default/object.tt
package Paws::DAX::SSESpecification;
  use Moo;
  use Types::Standard qw/Bool/;
  use Paws::DAX::Types qw//;
  has Enabled => (is => 'ro', isa => Bool, required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Enabled' => 1
                  },
  'types' => {
               'Enabled' => {
                              'type' => 'Bool'
                            }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::DAX::SSESpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DAX::SSESpecification object:

  $service_obj->Method(Att1 => { Enabled => $value, ..., Enabled => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DAX::SSESpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->Enabled

=head1 DESCRIPTION

Represents the settings used to enable server-side encryption.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Enabled => Bool

  Indicates whether server-side encryption is enabled (true) or disabled
(false) on the cluster.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DAX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

