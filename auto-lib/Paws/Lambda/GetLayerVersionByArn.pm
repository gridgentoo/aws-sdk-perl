
package Paws::Lambda::GetLayerVersionByArn;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Lambda::Types qw//;
  has Arn => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetLayerVersionByArn');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/2018-10-31/layers?find=LayerVersion');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Lambda::GetLayerVersionResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Arn' => {
                          'type' => 'Str'
                        }
             },
  'ParamInQuery' => {
                      'Arn' => 'Arn'
                    },
  'IsRequired' => {
                    'Arn' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::GetLayerVersionByArn - Arguments for method GetLayerVersionByArn on L<Paws::Lambda>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetLayerVersionByArn on the
L<AWS Lambda|Paws::Lambda> service. Use the attributes of this class
as arguments to method GetLayerVersionByArn.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetLayerVersionByArn.

=head1 SYNOPSIS

    my $lambda = Paws->service('Lambda');
    my $GetLayerVersionResponse = $lambda->GetLayerVersionByArn(
      Arn => 'MyLayerVersionArn',

    );

    # Results:
    my $CompatibleRuntimes = $GetLayerVersionResponse->CompatibleRuntimes;
    my $Content            = $GetLayerVersionResponse->Content;
    my $CreatedDate        = $GetLayerVersionResponse->CreatedDate;
    my $Description        = $GetLayerVersionResponse->Description;
    my $LayerArn           = $GetLayerVersionResponse->LayerArn;
    my $LayerVersionArn    = $GetLayerVersionResponse->LayerVersionArn;
    my $LicenseInfo        = $GetLayerVersionResponse->LicenseInfo;
    my $Version            = $GetLayerVersionResponse->Version;

    # Returns a L<Paws::Lambda::GetLayerVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lambda/GetLayerVersionByArn>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN of the layer version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetLayerVersionByArn in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

