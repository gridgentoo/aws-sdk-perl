
package Paws::S3::GetBucketLocation;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::S3::Types qw//;
  has Bucket => (is => 'ro', isa => Str, required => 1, predicate => 1);

use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetBucketLocation');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/{Bucket}?location');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::S3::GetBucketLocationOutput');
  class_has _result_key => (isa => Str, is => 'ro');
  
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Bucket' => 1
                  },
  'types' => {
               'Bucket' => {
                             'type' => 'Str'
                           }
             },
  'ParamInURI' => {
                    'Bucket' => 'Bucket'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetBucketLocation - Arguments for method GetBucketLocation on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBucketLocation on the
L<Amazon Simple Storage Service|Paws::S3> service. Use the attributes of this class
as arguments to method GetBucketLocation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBucketLocation.

=head1 SYNOPSIS

    my $s3 = Paws->service('S3');
    my $GetBucketLocationOutput = $s3->GetBucketLocation(
      Bucket => 'MyBucketName',

    );

    # Results:
    my $LocationConstraint = $GetBucketLocationOutput->LocationConstraint;

    # Returns a L<Paws::S3::GetBucketLocationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3/GetBucketLocation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str

The name of the bucket for which to get the location.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBucketLocation in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

