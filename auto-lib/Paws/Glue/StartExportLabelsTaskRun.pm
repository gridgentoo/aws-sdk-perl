# Generated from json/callargs_class.tt

package Paws::Glue::StartExportLabelsTaskRun;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw//;
  has OutputS3Path => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has TransformId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'StartExportLabelsTaskRun');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Glue::StartExportLabelsTaskRunResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'TransformId' => 1,
                    'OutputS3Path' => 1
                  },
  'types' => {
               'OutputS3Path' => {
                                   'type' => 'Str'
                                 },
               'TransformId' => {
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

Paws::Glue::StartExportLabelsTaskRun - Arguments for method StartExportLabelsTaskRun on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartExportLabelsTaskRun on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method StartExportLabelsTaskRun.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartExportLabelsTaskRun.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $StartExportLabelsTaskRunResponse = $glue->StartExportLabelsTaskRun(
      OutputS3Path => 'MyUriString',
      TransformId  => 'MyHashString',

    );

    # Results:
    my $TaskRunId = $StartExportLabelsTaskRunResponse->TaskRunId;

    # Returns a L<Paws::Glue::StartExportLabelsTaskRunResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/StartExportLabelsTaskRun>

=head1 ATTRIBUTES


=head2 B<REQUIRED> OutputS3Path => Str

The Amazon S3 path where you export the labels.



=head2 B<REQUIRED> TransformId => Str

The unique identifier of the machine learning transform.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartExportLabelsTaskRun in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

