
package Paws::Pinpoint::DeleteCampaign;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw//;
  has ApplicationId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has CampaignId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteCampaign');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v1/apps/{application-id}/campaigns/{campaign-id}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'DELETE');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Pinpoint::DeleteCampaignResponse');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ApplicationId' => 1,
                    'CampaignId' => 1
                  },
  'types' => {
               'ApplicationId' => {
                                    'type' => 'Str'
                                  },
               'CampaignId' => {
                                 'type' => 'Str'
                               }
             },
  'ParamInURI' => {
                    'CampaignId' => 'campaign-id',
                    'ApplicationId' => 'application-id'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::DeleteCampaign - Arguments for method DeleteCampaign on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteCampaign on the
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method DeleteCampaign.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteCampaign.

=head1 SYNOPSIS

    my $pinpoint = Paws->service('Pinpoint');
    my $DeleteCampaignResponse = $pinpoint->DeleteCampaign(
      ApplicationId => 'My__string',
      CampaignId    => 'My__string',

    );

    # Results:
    my $CampaignResponse = $DeleteCampaignResponse->CampaignResponse;

    # Returns a L<Paws::Pinpoint::DeleteCampaignResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pinpoint/DeleteCampaign>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique identifier for the application. This identifier is displayed
as the B<Project ID> on the Amazon Pinpoint console.



=head2 B<REQUIRED> CampaignId => Str

The unique identifier for the campaign.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteCampaign in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

