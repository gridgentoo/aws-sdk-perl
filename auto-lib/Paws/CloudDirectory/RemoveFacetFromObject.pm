
package Paws::CloudDirectory::RemoveFacetFromObject;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudDirectory::Types qw/CloudDirectory_ObjectReference CloudDirectory_SchemaFacet/;
  has DirectoryArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ObjectReference => (is => 'ro', isa => CloudDirectory_ObjectReference, required => 1, predicate => 1);
  has SchemaFacet => (is => 'ro', isa => CloudDirectory_SchemaFacet, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'RemoveFacetFromObject');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/amazonclouddirectory/2017-01-11/object/facets/delete');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CloudDirectory::RemoveFacetFromObjectResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInHeader' => {
                       'DirectoryArn' => 'x-amz-data-partition'
                     },
  'IsRequired' => {
                    'DirectoryArn' => 1,
                    'SchemaFacet' => 1,
                    'ObjectReference' => 1
                  },
  'types' => {
               'SchemaFacet' => {
                                  'type' => 'CloudDirectory_SchemaFacet',
                                  'class' => 'Paws::CloudDirectory::SchemaFacet'
                                },
               'ObjectReference' => {
                                      'type' => 'CloudDirectory_ObjectReference',
                                      'class' => 'Paws::CloudDirectory::ObjectReference'
                                    },
               'DirectoryArn' => {
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

Paws::CloudDirectory::RemoveFacetFromObject - Arguments for method RemoveFacetFromObject on L<Paws::CloudDirectory>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveFacetFromObject on the
L<Amazon CloudDirectory|Paws::CloudDirectory> service. Use the attributes of this class
as arguments to method RemoveFacetFromObject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveFacetFromObject.

=head1 SYNOPSIS

    my $clouddirectory = Paws->service('CloudDirectory');
    my $RemoveFacetFromObjectResponse = $clouddirectory->RemoveFacetFromObject(
      DirectoryArn    => 'MyArn',
      ObjectReference => {
        Selector => 'MySelectorObjectReference',    # OPTIONAL
      },
      SchemaFacet => {
        FacetName => 'MyFacetName',                 # min: 1, max: 64; OPTIONAL
        SchemaArn => 'MyArn',
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/clouddirectory/RemoveFacetFromObject>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectoryArn => Str

The ARN of the directory in which the object resides.



=head2 B<REQUIRED> ObjectReference => CloudDirectory_ObjectReference

A reference to the object to remove the facet from.



=head2 B<REQUIRED> SchemaFacet => CloudDirectory_SchemaFacet

The facet to remove. See SchemaFacet for details.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveFacetFromObject in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

