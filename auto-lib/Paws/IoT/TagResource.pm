
package Paws::IoT::TagResource;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoT::Types qw/IoT_Tag/;
  has ResourceArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[IoT_Tag], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'TagResource');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/tags');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoT::TagResourceResponse');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ResourceArn' => 1,
                    'Tags' => 1
                  },
  'NameInRequest' => {
                       'Tags' => 'tags',
                       'ResourceArn' => 'resourceArn'
                     },
  'types' => {
               'Tags' => {
                           'type' => 'ArrayRef[IoT_Tag]',
                           'class' => 'Paws::IoT::Tag'
                         },
               'ResourceArn' => {
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

Paws::IoT::TagResource - Arguments for method TagResource on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $TagResourceResponse = $iot->TagResource(
      ResourceArn => 'MyResourceArn',
      Tags        => [
        {
          Key   => 'MyTagKey',      # OPTIONAL
          Value => 'MyTagValue',    # OPTIONAL
        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/TagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The ARN of the resource.



=head2 B<REQUIRED> Tags => ArrayRef[IoT_Tag]

The new or modified tags for the resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

