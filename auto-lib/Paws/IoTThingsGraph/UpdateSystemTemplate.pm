# Generated from json/callargs_class.tt

package Paws::IoTThingsGraph::UpdateSystemTemplate;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::IoTThingsGraph::Types qw/IoTThingsGraph_DefinitionDocument/;
  has CompatibleNamespaceVersion => (is => 'ro', isa => Int, predicate => 1);
  has Definition => (is => 'ro', isa => IoTThingsGraph_DefinitionDocument, required => 1, predicate => 1);
  has Id => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateSystemTemplate');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoTThingsGraph::UpdateSystemTemplateResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Id' => 'id',
                       'CompatibleNamespaceVersion' => 'compatibleNamespaceVersion',
                       'Definition' => 'definition'
                     },
  'IsRequired' => {
                    'Definition' => 1,
                    'Id' => 1
                  },
  'types' => {
               'Id' => {
                         'type' => 'Str'
                       },
               'Definition' => {
                                 'type' => 'IoTThingsGraph_DefinitionDocument',
                                 'class' => 'Paws::IoTThingsGraph::DefinitionDocument'
                               },
               'CompatibleNamespaceVersion' => {
                                                 'type' => 'Int'
                                               }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::UpdateSystemTemplate - Arguments for method UpdateSystemTemplate on L<Paws::IoTThingsGraph>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSystemTemplate on the
L<AWS IoT Things Graph|Paws::IoTThingsGraph> service. Use the attributes of this class
as arguments to method UpdateSystemTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSystemTemplate.

=head1 SYNOPSIS

    my $iotthingsgraph = Paws->service('IoTThingsGraph');
    my $UpdateSystemTemplateResponse = $iotthingsgraph->UpdateSystemTemplate(
      Definition => {
        Language => 'GRAPHQL',             # values: GRAPHQL
        Text     => 'MyDefinitionText',    # max: 1048576

      },
      Id                         => 'MyUrn',
      CompatibleNamespaceVersion => 1,         # OPTIONAL
    );

    # Results:
    my $Summary = $UpdateSystemTemplateResponse->Summary;

    # Returns a L<Paws::IoTThingsGraph::UpdateSystemTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotthingsgraph/UpdateSystemTemplate>

=head1 ATTRIBUTES


=head2 CompatibleNamespaceVersion => Int

The version of the user's namespace. Defaults to the latest version of
the user's namespace.

If no value is specified, the latest version is used by default.



=head2 B<REQUIRED> Definition => IoTThingsGraph_DefinitionDocument

The C<DefinitionDocument> that contains the updated system definition.



=head2 B<REQUIRED> Id => Str

The ID of the system to be updated.

The ID should be in the following format.

C<urn:tdm:REGION/ACCOUNT ID/default:system:SYSTEMNAME>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSystemTemplate in L<Paws::IoTThingsGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

