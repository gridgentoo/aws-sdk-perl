
package Paws::LexModels::DeleteIntentVersion;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::LexModels::Types qw//;
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Version => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteIntentVersion');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/intents/{name}/versions/{version}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'DELETE');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'Name' => 'name',
                    'Version' => 'version'
                  },
  'types' => {
               'Version' => {
                              'type' => 'Str'
                            },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'IsRequired' => {
                    'Name' => 1,
                    'Version' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::DeleteIntentVersion - Arguments for method DeleteIntentVersion on L<Paws::LexModels>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteIntentVersion on the
L<Amazon Lex Model Building Service|Paws::LexModels> service. Use the attributes of this class
as arguments to method DeleteIntentVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteIntentVersion.

=head1 SYNOPSIS

    my $models.lex = Paws->service('LexModels');
    $models . lex->DeleteIntentVersion(
      Name    => 'MyIntentName',
      Version => 'MyNumericalVersion',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models.lex/DeleteIntentVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the intent.



=head2 B<REQUIRED> Version => Str

The version of the intent to delete. You cannot delete the C<$LATEST>
version of the intent. To delete the C<$LATEST> version, use the
DeleteIntent operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteIntentVersion in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

