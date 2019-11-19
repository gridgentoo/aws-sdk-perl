
package Paws::Pinpoint::GetSegmentVersion;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw//;
  has ApplicationId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has SegmentId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Version => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetSegmentVersion');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v1/apps/{application-id}/segments/{segment-id}/versions/{version}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Pinpoint::GetSegmentVersionResponse');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ApplicationId' => 1,
                    'Version' => 1,
                    'SegmentId' => 1
                  },
  'types' => {
               'SegmentId' => {
                                'type' => 'Str'
                              },
               'ApplicationId' => {
                                    'type' => 'Str'
                                  },
               'Version' => {
                              'type' => 'Str'
                            }
             },
  'ParamInURI' => {
                    'SegmentId' => 'segment-id',
                    'Version' => 'version',
                    'ApplicationId' => 'application-id'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::GetSegmentVersion - Arguments for method GetSegmentVersion on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSegmentVersion on the
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method GetSegmentVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSegmentVersion.

=head1 SYNOPSIS

    my $pinpoint = Paws->service('Pinpoint');
    my $GetSegmentVersionResponse = $pinpoint->GetSegmentVersion(
      ApplicationId => 'My__string',
      SegmentId     => 'My__string',
      Version       => 'My__string',

    );

    # Results:
    my $SegmentResponse = $GetSegmentVersionResponse->SegmentResponse;

    # Returns a L<Paws::Pinpoint::GetSegmentVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pinpoint/GetSegmentVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique identifier for the application. This identifier is displayed
as the B<Project ID> on the Amazon Pinpoint console.



=head2 B<REQUIRED> SegmentId => Str

The unique identifier for the segment.



=head2 B<REQUIRED> Version => Str

The unique version number (Version property) for the campaign version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSegmentVersion in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

