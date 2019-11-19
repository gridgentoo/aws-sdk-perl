# Generated from default/object.tt
package Paws::DMS::Certificate;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::DMS::Types qw//;
  has CertificateArn => (is => 'ro', isa => Str);
  has CertificateCreationDate => (is => 'ro', isa => Str);
  has CertificateIdentifier => (is => 'ro', isa => Str);
  has CertificateOwner => (is => 'ro', isa => Str);
  has CertificatePem => (is => 'ro', isa => Str);
  has CertificateWallet => (is => 'ro', isa => Str);
  has KeyLength => (is => 'ro', isa => Int);
  has SigningAlgorithm => (is => 'ro', isa => Str);
  has ValidFromDate => (is => 'ro', isa => Str);
  has ValidToDate => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CertificatePem' => {
                                     'type' => 'Str'
                                   },
               'ValidFromDate' => {
                                    'type' => 'Str'
                                  },
               'KeyLength' => {
                                'type' => 'Int'
                              },
               'CertificateWallet' => {
                                        'type' => 'Str'
                                      },
               'CertificateCreationDate' => {
                                              'type' => 'Str'
                                            },
               'SigningAlgorithm' => {
                                       'type' => 'Str'
                                     },
               'CertificateOwner' => {
                                       'type' => 'Str'
                                     },
               'CertificateArn' => {
                                     'type' => 'Str'
                                   },
               'ValidToDate' => {
                                  'type' => 'Str'
                                },
               'CertificateIdentifier' => {
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

Paws::DMS::Certificate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DMS::Certificate object:

  $service_obj->Method(Att1 => { CertificateArn => $value, ..., ValidToDate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DMS::Certificate object:

  $result = $service_obj->Method(...);
  $result->Att1->CertificateArn

=head1 DESCRIPTION

The SSL certificate that can be used to encrypt connections between the
endpoints and the replication instance.

=head1 ATTRIBUTES


=head2 CertificateArn => Str

  The Amazon Resource Name (ARN) for the certificate.


=head2 CertificateCreationDate => Str

  The date that the certificate was created.


=head2 CertificateIdentifier => Str

  A customer-assigned name for the certificate. Identifiers must begin
with a letter; must contain only ASCII letters, digits, and hyphens;
and must not end with a hyphen or contain two consecutive hyphens.


=head2 CertificateOwner => Str

  The owner of the certificate.


=head2 CertificatePem => Str

  The contents of a C<.pem> file, which contains an X.509 certificate.


=head2 CertificateWallet => Str

  The location of an imported Oracle Wallet certificate for use with SSL.


=head2 KeyLength => Int

  The key length of the cryptographic algorithm being used.


=head2 SigningAlgorithm => Str

  The signing algorithm for the certificate.


=head2 ValidFromDate => Str

  The beginning date that the certificate is valid.


=head2 ValidToDate => Str

  The final date that the certificate is valid.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

