# Generated from json/callresult_class.tt

package Paws::ACM::ImportCertificateResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ACM::Types qw//;
  has CertificateArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CertificateArn' => {
                                     'type' => 'Str'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ACM::ImportCertificateResponse

=head1 ATTRIBUTES


=head2 CertificateArn => Str

The Amazon Resource Name (ARN)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the imported certificate.


=head2 _request_id => Str


=cut

1;