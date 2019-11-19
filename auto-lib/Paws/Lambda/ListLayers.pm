
package Paws::Lambda::ListLayers;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Lambda::Types qw//;
  has CompatibleRuntime => (is => 'ro', isa => Str, predicate => 1);
  has Marker => (is => 'ro', isa => Str, predicate => 1);
  has MaxItems => (is => 'ro', isa => Int, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListLayers');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/2018-10-31/layers');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Lambda::ListLayersResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInQuery' => {
                      'CompatibleRuntime' => 'CompatibleRuntime',
                      'MaxItems' => 'MaxItems',
                      'Marker' => 'Marker'
                    },
  'types' => {
               'Marker' => {
                             'type' => 'Str'
                           },
               'MaxItems' => {
                               'type' => 'Int'
                             },
               'CompatibleRuntime' => {
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

Paws::Lambda::ListLayers - Arguments for method ListLayers on L<Paws::Lambda>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListLayers on the
L<AWS Lambda|Paws::Lambda> service. Use the attributes of this class
as arguments to method ListLayers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListLayers.

=head1 SYNOPSIS

    my $lambda = Paws->service('Lambda');
    my $ListLayersResponse = $lambda->ListLayers(
      CompatibleRuntime => 'nodejs',      # OPTIONAL
      Marker            => 'MyString',    # OPTIONAL
      MaxItems          => 1,             # OPTIONAL
    );

    # Results:
    my $Layers     = $ListLayersResponse->Layers;
    my $NextMarker = $ListLayersResponse->NextMarker;

    # Returns a L<Paws::Lambda::ListLayersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lambda/ListLayers>

=head1 ATTRIBUTES


=head2 CompatibleRuntime => Str

A runtime identifier. For example, C<go1.x>.

Valid values are: C<"nodejs">, C<"nodejs4.3">, C<"nodejs6.10">, C<"nodejs8.10">, C<"nodejs10.x">, C<"nodejs12.x">, C<"java8">, C<"java11">, C<"python2.7">, C<"python3.6">, C<"python3.7">, C<"python3.8">, C<"dotnetcore1.0">, C<"dotnetcore2.0">, C<"dotnetcore2.1">, C<"nodejs4.3-edge">, C<"go1.x">, C<"ruby2.5">, C<"provided">

=head2 Marker => Str

A pagination token returned by a previous call.



=head2 MaxItems => Int

The maximum number of layers to return.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListLayers in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

