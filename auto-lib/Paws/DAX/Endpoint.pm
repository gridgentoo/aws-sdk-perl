# Generated from default/object.tt
package Paws::DAX::Endpoint;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::DAX::Types qw//;
  has Address => (is => 'ro', isa => Str);
  has Port => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Port' => {
                           'type' => 'Int'
                         },
               'Address' => {
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

Paws::DAX::Endpoint

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DAX::Endpoint object:

  $service_obj->Method(Att1 => { Address => $value, ..., Port => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DAX::Endpoint object:

  $result = $service_obj->Method(...);
  $result->Att1->Address

=head1 DESCRIPTION

Represents the information required for client programs to connect to
the configuration endpoint for a DAX cluster, or to an individual node
within the cluster.

=head1 ATTRIBUTES


=head2 Address => Str

  The DNS hostname of the endpoint.


=head2 Port => Int

  The port number that applications should use to connect to the
endpoint.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DAX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

