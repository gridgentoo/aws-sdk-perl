
package Paws::IoT::UpdateThingGroup;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::IoT::Types qw/IoT_ThingGroupProperties/;
  has ExpectedVersion => (is => 'ro', isa => Int, predicate => 1);
  has ThingGroupName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ThingGroupProperties => (is => 'ro', isa => IoT_ThingGroupProperties, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateThingGroup');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/thing-groups/{thingGroupName}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PATCH');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoT::UpdateThingGroupResponse');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ThingGroupName' => 1,
                    'ThingGroupProperties' => 1
                  },
  'NameInRequest' => {
                       'ThingGroupProperties' => 'thingGroupProperties',
                       'ExpectedVersion' => 'expectedVersion'
                     },
  'types' => {
               'ThingGroupProperties' => {
                                           'class' => 'Paws::IoT::ThingGroupProperties',
                                           'type' => 'IoT_ThingGroupProperties'
                                         },
               'ThingGroupName' => {
                                     'type' => 'Str'
                                   },
               'ExpectedVersion' => {
                                      'type' => 'Int'
                                    }
             },
  'ParamInURI' => {
                    'ThingGroupName' => 'thingGroupName'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::UpdateThingGroup - Arguments for method UpdateThingGroup on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateThingGroup on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method UpdateThingGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateThingGroup.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $UpdateThingGroupResponse = $iot->UpdateThingGroup(
      ThingGroupName       => 'MyThingGroupName',
      ThingGroupProperties => {
        AttributePayload => {
          Attributes => {
            'MyAttributeName' =>
              'MyAttributeValue',    # key: max: 128, value: max: 800
          },    # OPTIONAL
          Merge => 1,    # OPTIONAL
        },    # OPTIONAL
        ThingGroupDescription =>
          'MyThingGroupDescription',    # max: 2028; OPTIONAL
      },
      ExpectedVersion => 1,             # OPTIONAL
    );

    # Results:
    my $Version = $UpdateThingGroupResponse->Version;

    # Returns a L<Paws::IoT::UpdateThingGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/UpdateThingGroup>

=head1 ATTRIBUTES


=head2 ExpectedVersion => Int

The expected version of the thing group. If this does not match the
version of the thing group being updated, the update will fail.



=head2 B<REQUIRED> ThingGroupName => Str

The thing group to update.



=head2 B<REQUIRED> ThingGroupProperties => IoT_ThingGroupProperties

The thing group properties.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateThingGroup in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

