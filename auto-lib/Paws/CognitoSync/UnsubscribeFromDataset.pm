
package Paws::CognitoSync::UnsubscribeFromDataset;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CognitoSync::Types qw//;
  has DatasetName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DeviceId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has IdentityId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has IdentityPoolId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UnsubscribeFromDataset');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}/subscriptions/{DeviceId}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'DELETE');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CognitoSync::UnsubscribeFromDatasetResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'DeviceId' => 'DeviceId',
                    'DatasetName' => 'DatasetName',
                    'IdentityId' => 'IdentityId',
                    'IdentityPoolId' => 'IdentityPoolId'
                  },
  'types' => {
               'DatasetName' => {
                                  'type' => 'Str'
                                },
               'DeviceId' => {
                               'type' => 'Str'
                             },
               'IdentityPoolId' => {
                                     'type' => 'Str'
                                   },
               'IdentityId' => {
                                 'type' => 'Str'
                               }
             },
  'IsRequired' => {
                    'IdentityPoolId' => 1,
                    'IdentityId' => 1,
                    'DatasetName' => 1,
                    'DeviceId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoSync::UnsubscribeFromDataset - Arguments for method UnsubscribeFromDataset on L<Paws::CognitoSync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UnsubscribeFromDataset on the
L<Amazon Cognito Sync|Paws::CognitoSync> service. Use the attributes of this class
as arguments to method UnsubscribeFromDataset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UnsubscribeFromDataset.

=head1 SYNOPSIS

    my $cognito-sync = Paws->service('CognitoSync');
    my $UnsubscribeFromDatasetResponse = $cognito -sync->UnsubscribeFromDataset(
      DatasetName    => 'MyDatasetName',
      DeviceId       => 'MyDeviceId',
      IdentityId     => 'MyIdentityId',
      IdentityPoolId => 'MyIdentityPoolId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-sync/UnsubscribeFromDataset>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatasetName => Str

The name of the dataset from which to unsubcribe.



=head2 B<REQUIRED> DeviceId => Str

The unique ID generated for this device by Cognito.



=head2 B<REQUIRED> IdentityId => Str

Unique ID for this identity.



=head2 B<REQUIRED> IdentityPoolId => Str

A name-spaced GUID (for example,
us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
Cognito. The ID of the pool to which this identity belongs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UnsubscribeFromDataset in L<Paws::CognitoSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

