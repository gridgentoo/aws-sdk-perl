
package Paws::DataExchange::GetJob;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DataExchange::Types qw//;
  has JobId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetJob');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v1/jobs/{JobId}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::DataExchange::GetJobResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'JobId' => 'JobId'
                  },
  'types' => {
               'JobId' => {
                            'type' => 'Str'
                          }
             },
  'IsRequired' => {
                    'JobId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::GetJob - Arguments for method GetJob on L<Paws::DataExchange>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetJob on the
L<AWS Data Exchange|Paws::DataExchange> service. Use the attributes of this class
as arguments to method GetJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetJob.

=head1 SYNOPSIS

    my $dataexchange = Paws->service('DataExchange');
    my $GetJobResponse = $dataexchange->GetJob(
      JobId => 'My__string',

    );

    # Results:
    my $Arn       = $GetJobResponse->Arn;
    my $CreatedAt = $GetJobResponse->CreatedAt;
    my $Details   = $GetJobResponse->Details;
    my $Errors    = $GetJobResponse->Errors;
    my $Id        = $GetJobResponse->Id;
    my $State     = $GetJobResponse->State;
    my $Type      = $GetJobResponse->Type;
    my $UpdatedAt = $GetJobResponse->UpdatedAt;

    # Returns a L<Paws::DataExchange::GetJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dataexchange/GetJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The unique identifier for a job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetJob in L<Paws::DataExchange>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

