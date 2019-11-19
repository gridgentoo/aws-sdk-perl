# Generated from default/object.tt
package Paws::Pinpoint::EventsResponse;
  use Moo;
  use Types::Standard qw//;
  use Paws::Pinpoint::Types qw/Pinpoint_MapOfItemResponse/;
  has Results => (is => 'ro', isa => Pinpoint_MapOfItemResponse);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Results' => {
                              'class' => 'Paws::Pinpoint::MapOfItemResponse',
                              'type' => 'Pinpoint_MapOfItemResponse'
                            }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::EventsResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::EventsResponse object:

  $service_obj->Method(Att1 => { Results => $value, ..., Results => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::EventsResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->Results

=head1 DESCRIPTION

Provides information about endpoints and the events that they're
associated with.

=head1 ATTRIBUTES


=head2 Results => Pinpoint_MapOfItemResponse

  A map that contains a multipart response for each endpoint. For each
item in this object, the endpoint ID is the key and the item response
is the value. If no item response exists, the value can also be one of
the following: 202, the request was processed successfully; or 400, the
payload wasn't valid or required fields were missing.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

