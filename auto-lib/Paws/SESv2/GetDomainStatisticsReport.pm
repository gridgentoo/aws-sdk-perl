
package Paws::SESv2::GetDomainStatisticsReport;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SESv2::Types qw//;
  has Domain => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has EndDate => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has StartDate => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetDomainStatisticsReport');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v2/email/deliverability-dashboard/statistics-report/{Domain}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SESv2::GetDomainStatisticsReportResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'Domain' => 'Domain'
                  },
  'ParamInQuery' => {
                      'EndDate' => 'EndDate',
                      'StartDate' => 'StartDate'
                    },
  'IsRequired' => {
                    'EndDate' => 1,
                    'Domain' => 1,
                    'StartDate' => 1
                  },
  'types' => {
               'EndDate' => {
                              'type' => 'Str'
                            },
               'StartDate' => {
                                'type' => 'Str'
                              },
               'Domain' => {
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

Paws::SESv2::GetDomainStatisticsReport - Arguments for method GetDomainStatisticsReport on L<Paws::SESv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDomainStatisticsReport on the
L<Amazon Simple Email Service|Paws::SESv2> service. Use the attributes of this class
as arguments to method GetDomainStatisticsReport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDomainStatisticsReport.

=head1 SYNOPSIS

    my $email = Paws->service('SESv2');
    my $GetDomainStatisticsReportResponse = $email->GetDomainStatisticsReport(
      Domain    => 'MyIdentity',
      EndDate   => '1970-01-01T01:00:00',
      StartDate => '1970-01-01T01:00:00',

    );

    # Results:
    my $DailyVolumes  = $GetDomainStatisticsReportResponse->DailyVolumes;
    my $OverallVolume = $GetDomainStatisticsReportResponse->OverallVolume;

    # Returns a L<Paws::SESv2::GetDomainStatisticsReportResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/GetDomainStatisticsReport>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Domain => Str

The domain that you want to obtain deliverability metrics for.



=head2 B<REQUIRED> EndDate => Str

The last day (in Unix time) that you want to obtain domain
deliverability metrics for. The C<EndDate> that you specify has to be
less than or equal to 30 days after the C<StartDate>.



=head2 B<REQUIRED> StartDate => Str

The first day (in Unix time) that you want to obtain domain
deliverability metrics for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDomainStatisticsReport in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

