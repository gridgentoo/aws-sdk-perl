# Generated from json/callresult_class.tt

package Paws::ACMPCA::GetCertificateAuthorityCsrResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ACMPCA::Types qw//;
  has Csr => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Csr' => {
                          'type' => 'Str'
                        }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ACMPCA::GetCertificateAuthorityCsrResponse

=head1 ATTRIBUTES


=head2 Csr => Str

The base64 PEM-encoded certificate signing request (CSR) for your
private CA certificate.


=head2 _request_id => Str


=cut

1;