
package Paws::Pinpoint::CreateImportJob;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw/Pinpoint_ImportJobRequest/;
  has ApplicationId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ImportJobRequest => (is => 'ro', isa => Pinpoint_ImportJobRequest, required => 1, predicate => 1);

  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'ImportJobRequest');
  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateImportJob');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v1/apps/{application-id}/jobs/import');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Pinpoint::CreateImportJobResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ImportJobRequest' => {
                                       'class' => 'Paws::Pinpoint::ImportJobRequest',
                                       'type' => 'Pinpoint_ImportJobRequest'
                                     },
               'ApplicationId' => {
                                    'type' => 'Str'
                                  }
             },
  'IsRequired' => {
                    'ApplicationId' => 1,
                    'ImportJobRequest' => 1
                  },
  'ParamInURI' => {
                    'ApplicationId' => 'application-id'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::CreateImportJob - Arguments for method CreateImportJob on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateImportJob on the
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method CreateImportJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateImportJob.

=head1 SYNOPSIS

    my $pinpoint = Paws->service('Pinpoint');
    my $CreateImportJobResponse = $pinpoint->CreateImportJob(
      ApplicationId    => 'My__string',
      ImportJobRequest => {
        Format            => 'CSV',          # values: CSV, JSON
        RoleArn           => 'My__string',
        S3Url             => 'My__string',
        DefineSegment     => 1,              # OPTIONAL
        ExternalId        => 'My__string',
        RegisterEndpoints => 1,              # OPTIONAL
        SegmentId         => 'My__string',
        SegmentName       => 'My__string',
      },

    );

    # Results:
    my $ImportJobResponse = $CreateImportJobResponse->ImportJobResponse;

    # Returns a L<Paws::Pinpoint::CreateImportJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pinpoint/CreateImportJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique identifier for the application. This identifier is displayed
as the B<Project ID> on the Amazon Pinpoint console.



=head2 B<REQUIRED> ImportJobRequest => Pinpoint_ImportJobRequest






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateImportJob in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

