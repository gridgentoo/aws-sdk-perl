# Generated from default/object.tt
package Paws::Kafka::ErrorInfo;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Kafka::Types qw//;
  has ErrorCode => (is => 'ro', isa => Str);
  has ErrorString => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ErrorString' => {
                                  'type' => 'Str'
                                },
               'ErrorCode' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'ErrorString' => 'errorString',
                       'ErrorCode' => 'errorCode'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::ErrorInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kafka::ErrorInfo object:

  $service_obj->Method(Att1 => { ErrorCode => $value, ..., ErrorString => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kafka::ErrorInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorCode

=head1 DESCRIPTION

Returns information about an error state of the cluster.

=head1 ATTRIBUTES


=head2 ErrorCode => Str

  A number describing the error programmatically.


=head2 ErrorString => Str

  An optional field to provide more details about the error.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

