# Generated from default/object.tt
package Paws::ApiGatewayV2::AccessLogSettings;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ApiGatewayV2::Types qw//;
  has DestinationArn => (is => 'ro', isa => Str);
  has Format => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Format' => 'format',
                       'DestinationArn' => 'destinationArn'
                     },
  'types' => {
               'Format' => {
                             'type' => 'Str'
                           },
               'DestinationArn' => {
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

Paws::ApiGatewayV2::AccessLogSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApiGatewayV2::AccessLogSettings object:

  $service_obj->Method(Att1 => { DestinationArn => $value, ..., Format => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApiGatewayV2::AccessLogSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->DestinationArn

=head1 DESCRIPTION

Settings for logging access in a stage.

=head1 ATTRIBUTES


=head2 DestinationArn => Str

  The ARN of the CloudWatch Logs log group to receive access logs.


=head2 Format => Str

  A single line format of the access logs of data, as specified by
selected $context variables. The format must include at least
$context.requestId.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

