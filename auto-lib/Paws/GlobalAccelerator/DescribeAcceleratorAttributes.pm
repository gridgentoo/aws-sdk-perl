# Generated from json/callargs_class.tt

package Paws::GlobalAccelerator::DescribeAcceleratorAttributes;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GlobalAccelerator::Types qw//;
  has AcceleratorArn => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeAcceleratorAttributes');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::GlobalAccelerator::DescribeAcceleratorAttributesResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AcceleratorArn' => {
                                     'type' => 'Str'
                                   }
             },
  'IsRequired' => {
                    'AcceleratorArn' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::DescribeAcceleratorAttributes - Arguments for method DescribeAcceleratorAttributes on L<Paws::GlobalAccelerator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAcceleratorAttributes on the
L<AWS Global Accelerator|Paws::GlobalAccelerator> service. Use the attributes of this class
as arguments to method DescribeAcceleratorAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAcceleratorAttributes.

=head1 SYNOPSIS

    my $globalaccelerator = Paws->service('GlobalAccelerator');
    my $DescribeAcceleratorAttributesResponse =
      $globalaccelerator->DescribeAcceleratorAttributes(
      AcceleratorArn => 'MyGenericString',

      );

    # Results:
    my $AcceleratorAttributes =
      $DescribeAcceleratorAttributesResponse->AcceleratorAttributes;

# Returns a L<Paws::GlobalAccelerator::DescribeAcceleratorAttributesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/globalaccelerator/DescribeAcceleratorAttributes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AcceleratorArn => Str

The Amazon Resource Name (ARN) of the accelerator with the attributes
that you want to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAcceleratorAttributes in L<Paws::GlobalAccelerator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

