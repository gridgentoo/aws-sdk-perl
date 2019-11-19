# Generated from callargs_class.tt

package Paws::CloudFormation::SetTypeDefaultVersion;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudFormation::Types qw//;
  has Arn => (is => 'ro', isa => Str, predicate => 1);
  has Type => (is => 'ro', isa => Str, predicate => 1);
  has TypeName => (is => 'ro', isa => Str, predicate => 1);
  has VersionId => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'SetTypeDefaultVersion');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CloudFormation::SetTypeDefaultVersionOutput');
  class_has _result_key => (isa => Str, is => 'ro', default => 'SetTypeDefaultVersionResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TypeName' => {
                               'type' => 'Str'
                             },
               'VersionId' => {
                                'type' => 'Str'
                              },
               'Type' => {
                           'type' => 'Str'
                         },
               'Arn' => {
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

Paws::CloudFormation::SetTypeDefaultVersion - Arguments for method SetTypeDefaultVersion on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetTypeDefaultVersion on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method SetTypeDefaultVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetTypeDefaultVersion.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $SetTypeDefaultVersionOutput = $cloudformation->SetTypeDefaultVersion(
      Arn       => 'MyPrivateTypeArn',    # OPTIONAL
      Type      => 'RESOURCE',            # OPTIONAL
      TypeName  => 'MyTypeName',          # OPTIONAL
      VersionId => 'MyTypeVersionId',     # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/SetTypeDefaultVersion>

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the type for which you want version
summary information.

Conditional: You must specify C<TypeName> or C<Arn>.



=head2 Type => Str

The kind of type.

Valid values are: C<"RESOURCE">

=head2 TypeName => Str

The name of the type.

Conditional: You must specify C<TypeName> or C<Arn>.



=head2 VersionId => Str

The ID of a specific version of the type. The version ID is the value
at the end of the Amazon Resource Name (ARN) assigned to the type
version when it is registered.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetTypeDefaultVersion in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

