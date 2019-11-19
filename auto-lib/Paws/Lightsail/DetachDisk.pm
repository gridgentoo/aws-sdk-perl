# Generated from json/callargs_class.tt

package Paws::Lightsail::DetachDisk;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Lightsail::Types qw//;
  has DiskName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DetachDisk');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Lightsail::DetachDiskResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DiskName' => {
                               'type' => 'Str'
                             }
             },
  'IsRequired' => {
                    'DiskName' => 1
                  },
  'NameInRequest' => {
                       'DiskName' => 'diskName'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::DetachDisk - Arguments for method DetachDisk on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DetachDisk on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method DetachDisk.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DetachDisk.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $DetachDiskResult = $lightsail->DetachDisk(
      DiskName => 'MyResourceName',

    );

    # Results:
    my $Operations = $DetachDiskResult->Operations;

    # Returns a L<Paws::Lightsail::DetachDiskResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/DetachDisk>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DiskName => Str

The unique name of the disk you want to detach from your instance
(e.g., C<my-disk>).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DetachDisk in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

