
package Paws::IoTEvents::CreateInput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoTEvents::Types qw/IoTEvents_InputDefinition IoTEvents_Tag/;
  has InputDefinition => (is => 'ro', isa => IoTEvents_InputDefinition, required => 1, predicate => 1);
  has InputDescription => (is => 'ro', isa => Str, predicate => 1);
  has InputName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[IoTEvents_Tag], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateInput');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/inputs');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoTEvents::CreateInputResponse');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'InputName' => 1,
                    'InputDefinition' => 1
                  },
  'NameInRequest' => {
                       'Tags' => 'tags',
                       'InputDescription' => 'inputDescription',
                       'InputName' => 'inputName',
                       'InputDefinition' => 'inputDefinition'
                     },
  'types' => {
               'InputDefinition' => {
                                      'type' => 'IoTEvents_InputDefinition',
                                      'class' => 'Paws::IoTEvents::InputDefinition'
                                    },
               'InputName' => {
                                'type' => 'Str'
                              },
               'Tags' => {
                           'class' => 'Paws::IoTEvents::Tag',
                           'type' => 'ArrayRef[IoTEvents_Tag]'
                         },
               'InputDescription' => {
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

Paws::IoTEvents::CreateInput - Arguments for method CreateInput on L<Paws::IoTEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateInput on the
L<AWS IoT Events|Paws::IoTEvents> service. Use the attributes of this class
as arguments to method CreateInput.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateInput.

=head1 SYNOPSIS

    my $iotevents = Paws->service('IoTEvents');
    my $CreateInputResponse = $iotevents->CreateInput(
      InputDefinition => {
        Attributes => [
          {
            JsonPath => 'MyAttributeJsonPath',    # min: 1, max: 128

          },
          ...
        ],                                        # min: 1, max: 200

      },
      InputName        => 'MyInputName',
      InputDescription => 'MyInputDescription',    # OPTIONAL
      Tags             => [
        {
          Key   => 'MyTagKey',                     # min: 1, max: 128
          Value => 'MyTagValue',                   # max: 256

        },
        ...
      ],                                           # OPTIONAL
    );

    # Results:
    my $InputConfiguration = $CreateInputResponse->InputConfiguration;

    # Returns a L<Paws::IoTEvents::CreateInputResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotevents/CreateInput>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InputDefinition => IoTEvents_InputDefinition

The definition of the input.



=head2 InputDescription => Str

A brief description of the input.



=head2 B<REQUIRED> InputName => Str

The name you want to give to the input.



=head2 Tags => ArrayRef[IoTEvents_Tag]

Metadata that can be used to manage the input.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateInput in L<Paws::IoTEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

