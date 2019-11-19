
package Paws::IoT::ListOutgoingCertificates;
  use Moo;
  use Types::Standard qw/Str Bool Int/;
  use Paws::IoT::Types qw//;
  has AscendingOrder => (is => 'ro', isa => Bool, predicate => 1);
  has Marker => (is => 'ro', isa => Str, predicate => 1);
  has PageSize => (is => 'ro', isa => Int, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListOutgoingCertificates');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/certificates-out-going');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoT::ListOutgoingCertificatesResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInQuery' => {
                      'AscendingOrder' => 'isAscendingOrder',
                      'Marker' => 'marker',
                      'PageSize' => 'pageSize'
                    },
  'types' => {
               'Marker' => {
                             'type' => 'Str'
                           },
               'PageSize' => {
                               'type' => 'Int'
                             },
               'AscendingOrder' => {
                                     'type' => 'Bool'
                                   }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListOutgoingCertificates - Arguments for method ListOutgoingCertificates on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListOutgoingCertificates on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method ListOutgoingCertificates.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListOutgoingCertificates.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $ListOutgoingCertificatesResponse = $iot->ListOutgoingCertificates(
      AscendingOrder => 1,             # OPTIONAL
      Marker         => 'MyMarker',    # OPTIONAL
      PageSize       => 1,             # OPTIONAL
    );

    # Results:
    my $NextMarker = $ListOutgoingCertificatesResponse->NextMarker;
    my $OutgoingCertificates =
      $ListOutgoingCertificatesResponse->OutgoingCertificates;

    # Returns a L<Paws::IoT::ListOutgoingCertificatesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/ListOutgoingCertificates>

=head1 ATTRIBUTES


=head2 AscendingOrder => Bool

Specifies the order for results. If True, the results are returned in
ascending order, based on the creation date.



=head2 Marker => Str

The marker for the next set of results.



=head2 PageSize => Int

The result page size.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListOutgoingCertificates in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

