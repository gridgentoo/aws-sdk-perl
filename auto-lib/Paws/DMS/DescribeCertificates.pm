# Generated from json/callargs_class.tt

package Paws::DMS::DescribeCertificates;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::DMS::Types qw/DMS_Filter/;
  has Filters => (is => 'ro', isa => ArrayRef[DMS_Filter], predicate => 1);
  has Marker => (is => 'ro', isa => Str, predicate => 1);
  has MaxRecords => (is => 'ro', isa => Int, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeCertificates');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::DMS::DescribeCertificatesResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MaxRecords' => {
                                 'type' => 'Int'
                               },
               'Filters' => {
                              'type' => 'ArrayRef[DMS_Filter]',
                              'class' => 'Paws::DMS::Filter'
                            },
               'Marker' => {
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

Paws::DMS::DescribeCertificates - Arguments for method DescribeCertificates on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeCertificates on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method DescribeCertificates.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeCertificates.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    my $DescribeCertificatesResponse = $dms->DescribeCertificates(
      Filters => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],

        },
        ...
      ],    # OPTIONAL
      Marker     => 'MyString',    # OPTIONAL
      MaxRecords => 1,             # OPTIONAL
    );

    # Results:
    my $Certificates = $DescribeCertificatesResponse->Certificates;
    my $Marker       = $DescribeCertificatesResponse->Marker;

    # Returns a L<Paws::DMS::DescribeCertificatesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/DescribeCertificates>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[DMS_Filter]

Filters applied to the certificate described in the form of key-value
pairs.



=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the vlue specified by C<MaxRecords>.



=head2 MaxRecords => Int

The maximum number of records to include in the response. If more
records exist than the specified C<MaxRecords> value, a pagination
token called a marker is included in the response so that the remaining
results can be retrieved.

Default: 10




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeCertificates in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

