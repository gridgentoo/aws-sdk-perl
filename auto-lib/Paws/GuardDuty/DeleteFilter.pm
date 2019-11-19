
package Paws::GuardDuty::DeleteFilter;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GuardDuty::Types qw//;
  has DetectorId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has FilterName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteFilter');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/detector/{detectorId}/filter/{filterName}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'DELETE');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::GuardDuty::DeleteFilterResponse');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'DetectorId' => 1,
                    'FilterName' => 1
                  },
  'types' => {
               'FilterName' => {
                                 'type' => 'Str'
                               },
               'DetectorId' => {
                                 'type' => 'Str'
                               }
             },
  'ParamInURI' => {
                    'FilterName' => 'filterName',
                    'DetectorId' => 'detectorId'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::DeleteFilter - Arguments for method DeleteFilter on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteFilter on the
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method DeleteFilter.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteFilter.

=head1 SYNOPSIS

    my $guardduty = Paws->service('GuardDuty');
    my $DeleteFilterResponse = $guardduty->DeleteFilter(
      DetectorId => 'MyDetectorId',
      FilterName => 'MyString',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/guardduty/DeleteFilter>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DetectorId => Str

The unique ID of the detector the filter is associated with.



=head2 B<REQUIRED> FilterName => Str

The name of the filter you want to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteFilter in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

