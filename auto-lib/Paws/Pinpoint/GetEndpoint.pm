
package Paws::Pinpoint::GetEndpoint;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw//;
  has ApplicationId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has EndpointId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetEndpoint');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v1/apps/{application-id}/endpoints/{endpoint-id}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Pinpoint::EndpointResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EndpointId' => {
                                 'type' => 'Str'
                               },
               'ApplicationId' => {
                                    'type' => 'Str'
                                  }
             },
  'IsRequired' => {
                    'EndpointId' => 1,
                    'ApplicationId' => 1
                  },
  'ParamInURI' => {
                    'ApplicationId' => 'application-id',
                    'EndpointId' => 'endpoint-id'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GetEndpoint - Arguments for method GetEndpoint on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetEndpoint on the
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method GetEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetEndpoint.

=head1 SYNOPSIS

    my $pinpoint = Paws->service('Pinpoint');
    my $EndpointResponse = $pinpoint->GetEndpoint(
      ApplicationId => 'My__string',
      EndpointId    => 'My__string',

    );

    # Results:
    my $Address        = $EndpointResponse->Address;
    my $ApplicationId  = $EndpointResponse->ApplicationId;
    my $Attributes     = $EndpointResponse->Attributes;
    my $ChannelType    = $EndpointResponse->ChannelType;
    my $CohortId       = $EndpointResponse->CohortId;
    my $CreationDate   = $EndpointResponse->CreationDate;
    my $Demographic    = $EndpointResponse->Demographic;
    my $EffectiveDate  = $EndpointResponse->EffectiveDate;
    my $EndpointStatus = $EndpointResponse->EndpointStatus;
    my $Id             = $EndpointResponse->Id;
    my $Location       = $EndpointResponse->Location;
    my $Metrics        = $EndpointResponse->Metrics;
    my $OptOut         = $EndpointResponse->OptOut;
    my $RequestId      = $EndpointResponse->RequestId;
    my $User           = $EndpointResponse->User;

    # Returns a L<Paws::Pinpoint::EndpointResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pinpoint/GetEndpoint>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique identifier for the application. This identifier is displayed
as the B<Project ID> on the Amazon Pinpoint console.



=head2 B<REQUIRED> EndpointId => Str

The unique identifier for the endpoint.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetEndpoint in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

