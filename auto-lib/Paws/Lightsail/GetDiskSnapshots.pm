# Generated from json/callargs_class.tt

package Paws::Lightsail::GetDiskSnapshots;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Lightsail::Types qw//;
  has PageToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetDiskSnapshots');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Lightsail::GetDiskSnapshotsResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'PageToken' => 'pageToken'
                     },
  'types' => {
               'PageToken' => {
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

Paws::Lightsail::GetDiskSnapshots - Arguments for method GetDiskSnapshots on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDiskSnapshots on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method GetDiskSnapshots.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDiskSnapshots.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $GetDiskSnapshotsResult = $lightsail->GetDiskSnapshots(
      PageToken => 'Mystring',    # OPTIONAL
    );

    # Results:
    my $DiskSnapshots = $GetDiskSnapshotsResult->DiskSnapshots;
    my $NextPageToken = $GetDiskSnapshotsResult->NextPageToken;

    # Returns a L<Paws::Lightsail::GetDiskSnapshotsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/GetDiskSnapshots>

=head1 ATTRIBUTES


=head2 PageToken => Str

A token used for advancing to the next page of results from your
GetDiskSnapshots request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDiskSnapshots in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

