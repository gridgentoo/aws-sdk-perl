
package Paws::Greengrass::GetCoreDefinitionVersion;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Greengrass::Types qw//;
  has CoreDefinitionId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has CoreDefinitionVersionId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetCoreDefinitionVersion');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/greengrass/definition/cores/{CoreDefinitionId}/versions/{CoreDefinitionVersionId}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Greengrass::GetCoreDefinitionVersionResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'CoreDefinitionId' => 'CoreDefinitionId',
                    'CoreDefinitionVersionId' => 'CoreDefinitionVersionId'
                  },
  'types' => {
               'CoreDefinitionId' => {
                                       'type' => 'Str'
                                     },
               'CoreDefinitionVersionId' => {
                                              'type' => 'Str'
                                            }
             },
  'IsRequired' => {
                    'CoreDefinitionVersionId' => 1,
                    'CoreDefinitionId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::GetCoreDefinitionVersion - Arguments for method GetCoreDefinitionVersion on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCoreDefinitionVersion on the
L<AWS Greengrass|Paws::Greengrass> service. Use the attributes of this class
as arguments to method GetCoreDefinitionVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCoreDefinitionVersion.

=head1 SYNOPSIS

    my $greengrass = Paws->service('Greengrass');
    my $GetCoreDefinitionVersionResponse =
      $greengrass->GetCoreDefinitionVersion(
      CoreDefinitionId        => 'My__string',
      CoreDefinitionVersionId => 'My__string',

      );

    # Results:
    my $Arn = $GetCoreDefinitionVersionResponse->Arn;
    my $CreationTimestamp =
      $GetCoreDefinitionVersionResponse->CreationTimestamp;
    my $Definition = $GetCoreDefinitionVersionResponse->Definition;
    my $Id         = $GetCoreDefinitionVersionResponse->Id;
    my $NextToken  = $GetCoreDefinitionVersionResponse->NextToken;
    my $Version    = $GetCoreDefinitionVersionResponse->Version;

    # Returns a L<Paws::Greengrass::GetCoreDefinitionVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/GetCoreDefinitionVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CoreDefinitionId => Str

The ID of the core definition.



=head2 B<REQUIRED> CoreDefinitionVersionId => Str

The ID of the core definition version. This value maps to the
''Version'' property of the corresponding ''VersionInformation''
object, which is returned by ''ListCoreDefinitionVersions'' requests.
If the version is the last one that was associated with a core
definition, the value also maps to the ''LatestVersion'' property of
the corresponding ''DefinitionInformation'' object.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCoreDefinitionVersion in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

