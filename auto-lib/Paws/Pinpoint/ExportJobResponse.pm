# Generated from default/object.tt
package Paws::Pinpoint::ExportJobResponse;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef Undef/;
  use Paws::Pinpoint::Types qw/Pinpoint_ExportJobResource/;
  has ApplicationId => (is => 'ro', isa => Str, required => 1);
  has CompletedPieces => (is => 'ro', isa => Int);
  has CompletionDate => (is => 'ro', isa => Str);
  has CreationDate => (is => 'ro', isa => Str, required => 1);
  has Definition => (is => 'ro', isa => Pinpoint_ExportJobResource, required => 1);
  has FailedPieces => (is => 'ro', isa => Int);
  has Failures => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Id => (is => 'ro', isa => Str, required => 1);
  has JobStatus => (is => 'ro', isa => Str, required => 1);
  has TotalFailures => (is => 'ro', isa => Int);
  has TotalPieces => (is => 'ro', isa => Int);
  has TotalProcessed => (is => 'ro', isa => Int);
  has Type => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CreationDate' => {
                                   'type' => 'Str'
                                 },
               'ApplicationId' => {
                                    'type' => 'Str'
                                  },
               'Definition' => {
                                 'type' => 'Pinpoint_ExportJobResource',
                                 'class' => 'Paws::Pinpoint::ExportJobResource'
                               },
               'FailedPieces' => {
                                   'type' => 'Int'
                                 },
               'Id' => {
                         'type' => 'Str'
                       },
               'CompletedPieces' => {
                                      'type' => 'Int'
                                    },
               'TotalFailures' => {
                                    'type' => 'Int'
                                  },
               'TotalProcessed' => {
                                     'type' => 'Int'
                                   },
               'Failures' => {
                               'type' => 'ArrayRef[Str|Undef]'
                             },
               'Type' => {
                           'type' => 'Str'
                         },
               'JobStatus' => {
                                'type' => 'Str'
                              },
               'TotalPieces' => {
                                  'type' => 'Int'
                                },
               'CompletionDate' => {
                                     'type' => 'Str'
                                   }
             },
  'IsRequired' => {
                    'Type' => 1,
                    'Definition' => 1,
                    'JobStatus' => 1,
                    'Id' => 1,
                    'CreationDate' => 1,
                    'ApplicationId' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::ExportJobResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::ExportJobResponse object:

  $service_obj->Method(Att1 => { ApplicationId => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::ExportJobResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationId

=head1 DESCRIPTION

Provides information about the status and settings of a job that
exports endpoint definitions to a file. The file can be added directly
to an Amazon Simple Storage Service (Amazon S3) bucket by using the
Amazon Pinpoint API or downloaded directly to a computer by using the
Amazon Pinpoint console.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

  The unique identifier for the application that's associated with the
export job.


=head2 CompletedPieces => Int

  The number of pieces that were processed successfully (completed) by
the export job, as of the time of the request.


=head2 CompletionDate => Str

  The date, in ISO 8601 format, when the export job was completed.


=head2 B<REQUIRED> CreationDate => Str

  The date, in ISO 8601 format, when the export job was created.


=head2 B<REQUIRED> Definition => Pinpoint_ExportJobResource

  The resource settings that apply to the export job.


=head2 FailedPieces => Int

  The number of pieces that weren't processed successfully (failed) by
the export job, as of the time of the request.


=head2 Failures => ArrayRef[Str|Undef]

  An array of entries, one for each of the first 100 entries that weren't
processed successfully (failed) by the export job, if any.


=head2 B<REQUIRED> Id => Str

  The unique identifier for the export job.


=head2 B<REQUIRED> JobStatus => Str

  The status of the export job. The job status is FAILED if Amazon
Pinpoint wasn't able to process one or more pieces in the job.


=head2 TotalFailures => Int

  The total number of endpoint definitions that weren't processed
successfully (failed) by the export job, typically because an error,
such as a syntax error, occurred.


=head2 TotalPieces => Int

  The total number of pieces that must be processed to complete the
export job. Each piece consists of an approximately equal portion of
the endpoint definitions that are part of the export job.


=head2 TotalProcessed => Int

  The total number of endpoint definitions that were processed by the
export job.


=head2 B<REQUIRED> Type => Str

  The job type. This value is EXPORT for export jobs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

