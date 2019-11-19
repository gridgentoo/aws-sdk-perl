
package Paws::IoT::UpdateStream;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoT::Types qw/IoT_StreamFile/;
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has Files => (is => 'ro', isa => ArrayRef[IoT_StreamFile], predicate => 1);
  has RoleArn => (is => 'ro', isa => Str, predicate => 1);
  has StreamId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateStream');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/streams/{streamId}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoT::UpdateStreamResponse');

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Description' => 'description',
                       'Files' => 'files',
                       'RoleArn' => 'roleArn'
                     },
  'IsRequired' => {
                    'StreamId' => 1
                  },
  'types' => {
               'StreamId' => {
                               'type' => 'Str'
                             },
               'Description' => {
                                  'type' => 'Str'
                                },
               'Files' => {
                            'class' => 'Paws::IoT::StreamFile',
                            'type' => 'ArrayRef[IoT_StreamFile]'
                          },
               'RoleArn' => {
                              'type' => 'Str'
                            }
             },
  'ParamInURI' => {
                    'StreamId' => 'streamId'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::UpdateStream - Arguments for method UpdateStream on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateStream on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method UpdateStream.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateStream.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $UpdateStreamResponse = $iot->UpdateStream(
      StreamId    => 'MyStreamId',
      Description => 'MyStreamDescription',    # OPTIONAL
      Files       => [
        {
          FileId     => 1,                     # max: 255; OPTIONAL
          S3Location => {
            Bucket  => 'MyS3Bucket',           # min: 1; OPTIONAL
            Key     => 'MyS3Key',              # min: 1; OPTIONAL
            Version => 'MyS3Version',          # OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],        # OPTIONAL
      RoleArn => 'MyRoleArn',    # OPTIONAL
    );

    # Results:
    my $Description   = $UpdateStreamResponse->Description;
    my $StreamArn     = $UpdateStreamResponse->StreamArn;
    my $StreamId      = $UpdateStreamResponse->StreamId;
    my $StreamVersion = $UpdateStreamResponse->StreamVersion;

    # Returns a L<Paws::IoT::UpdateStreamResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/UpdateStream>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the stream.



=head2 Files => ArrayRef[IoT_StreamFile]

The files associated with the stream.



=head2 RoleArn => Str

An IAM role that allows the IoT service principal assumes to access
your S3 files.



=head2 B<REQUIRED> StreamId => Str

The stream ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateStream in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

