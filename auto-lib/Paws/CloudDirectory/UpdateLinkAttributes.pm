
package Paws::CloudDirectory::UpdateLinkAttributes;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudDirectory::Types qw/CloudDirectory_LinkAttributeUpdate CloudDirectory_TypedLinkSpecifier/;
  has AttributeUpdates => (is => 'ro', isa => ArrayRef[CloudDirectory_LinkAttributeUpdate], required => 1, predicate => 1);
  has DirectoryArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has TypedLinkSpecifier => (is => 'ro', isa => CloudDirectory_TypedLinkSpecifier, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateLinkAttributes');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/amazonclouddirectory/2017-01-11/typedlink/attributes/update');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CloudDirectory::UpdateLinkAttributesResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DirectoryArn' => {
                                   'type' => 'Str'
                                 },
               'TypedLinkSpecifier' => {
                                         'class' => 'Paws::CloudDirectory::TypedLinkSpecifier',
                                         'type' => 'CloudDirectory_TypedLinkSpecifier'
                                       },
               'AttributeUpdates' => {
                                       'type' => 'ArrayRef[CloudDirectory_LinkAttributeUpdate]',
                                       'class' => 'Paws::CloudDirectory::LinkAttributeUpdate'
                                     }
             },
  'IsRequired' => {
                    'DirectoryArn' => 1,
                    'AttributeUpdates' => 1,
                    'TypedLinkSpecifier' => 1
                  },
  'ParamInHeader' => {
                       'DirectoryArn' => 'x-amz-data-partition'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::UpdateLinkAttributes - Arguments for method UpdateLinkAttributes on L<Paws::CloudDirectory>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateLinkAttributes on the
L<Amazon CloudDirectory|Paws::CloudDirectory> service. Use the attributes of this class
as arguments to method UpdateLinkAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateLinkAttributes.

=head1 SYNOPSIS

    my $clouddirectory = Paws->service('CloudDirectory');
    my $UpdateLinkAttributesResponse = $clouddirectory->UpdateLinkAttributes(
      AttributeUpdates => [
        {
          AttributeAction => {
            AttributeActionType =>
              'CREATE_OR_UPDATE',   # values: CREATE_OR_UPDATE, DELETE; OPTIONAL
            AttributeUpdateValue => {
              BinaryValue   => 'BlobBinaryAttributeValue',    # OPTIONAL
              BooleanValue  => 1,                             # OPTIONAL
              DatetimeValue => '1970-01-01T01:00:00',         # OPTIONAL
              NumberValue   => 'MyNumberAttributeValue',      # OPTIONAL
              StringValue   => 'MyStringAttributeValue',      # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          AttributeKey => {
            FacetName => 'MyFacetName',        # min: 1, max: 64
            Name      => 'MyAttributeName',    # min: 1, max: 230
            SchemaArn => 'MyArn',

          },    # OPTIONAL
        },
        ...
      ],
      DirectoryArn       => 'MyArn',
      TypedLinkSpecifier => {
        IdentityAttributeValues => [
          {
            AttributeName => 'MyAttributeName',    # min: 1, max: 230
            Value         => {
              BinaryValue   => 'BlobBinaryAttributeValue',    # OPTIONAL
              BooleanValue  => 1,                             # OPTIONAL
              DatetimeValue => '1970-01-01T01:00:00',         # OPTIONAL
              NumberValue   => 'MyNumberAttributeValue',      # OPTIONAL
              StringValue   => 'MyStringAttributeValue',      # OPTIONAL
            },    # OPTIONAL

          },
          ...
        ],
        SourceObjectReference => {
          Selector => 'MySelectorObjectReference',    # OPTIONAL
        },
        TargetObjectReference => {
          Selector => 'MySelectorObjectReference',    # OPTIONAL
        },
        TypedLinkFacet => {
          SchemaArn     => 'MyArn',
          TypedLinkName => 'MyTypedLinkName',

        },

      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/clouddirectory/UpdateLinkAttributes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AttributeUpdates => ArrayRef[CloudDirectory_LinkAttributeUpdate]

The attributes update structure.



=head2 B<REQUIRED> DirectoryArn => Str

The Amazon Resource Name (ARN) that is associated with the Directory
where the updated typed link resides. For more information, see arns or
Typed Links
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).



=head2 B<REQUIRED> TypedLinkSpecifier => CloudDirectory_TypedLinkSpecifier

Allows a typed link specifier to be accepted as input.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateLinkAttributes in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

