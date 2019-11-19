# Generated from default/object.tt
package Paws::ApiGateway::AccessLogSettings;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ApiGateway::Types qw//;
  has DestinationArn => (is => 'ro', isa => Str);
  has Format => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Format' => {
                             'type' => 'Str'
                           },
               'DestinationArn' => {
                                     'type' => 'Str'
                                   }
             },
  'NameInRequest' => {
                       'DestinationArn' => 'destinationArn',
                       'Format' => 'format'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::AccessLogSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApiGateway::AccessLogSettings object:

  $service_obj->Method(Att1 => { DestinationArn => $value, ..., Format => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApiGateway::AccessLogSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->DestinationArn

=head1 DESCRIPTION

Access log settings, including the access log format and access log
destination ARN.

=head1 ATTRIBUTES


=head2 DestinationArn => Str

  The ARN of the CloudWatch Logs log group to receive access logs.


=head2 Format => Str

  A single line format of the access logs of data, as specified by
selected $context variables
(https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-mapping-template-reference.html#context-variable-reference).
The format must include at least C<$context.requestId>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

