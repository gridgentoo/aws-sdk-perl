
package Paws::IoT::AcceptCertificateTransfer;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::IoT::Types qw//;
  has CertificateId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has SetAsActive => (is => 'ro', isa => Bool, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'AcceptCertificateTransfer');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/accept-certificate-transfer/{certificateId}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PATCH');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'CertificateId' => 'certificateId'
                  },
  'types' => {
               'SetAsActive' => {
                                  'type' => 'Bool'
                                },
               'CertificateId' => {
                                    'type' => 'Str'
                                  }
             },
  'IsRequired' => {
                    'CertificateId' => 1
                  },
  'ParamInQuery' => {
                      'SetAsActive' => 'setAsActive'
                    }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::AcceptCertificateTransfer - Arguments for method AcceptCertificateTransfer on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AcceptCertificateTransfer on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method AcceptCertificateTransfer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AcceptCertificateTransfer.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    $iot->AcceptCertificateTransfer(
      CertificateId => 'MyCertificateId',
      SetAsActive   => 1,                   # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/AcceptCertificateTransfer>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateId => Str

The ID of the certificate. (The last part of the certificate ARN
contains the certificate ID.)



=head2 SetAsActive => Bool

Specifies whether the certificate is active.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AcceptCertificateTransfer in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

