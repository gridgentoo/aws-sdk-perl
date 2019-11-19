# Generated from default/object.tt
package Paws::Forecast::S3Config;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Forecast::Types qw//;
  has KMSKeyArn => (is => 'ro', isa => Str);
  has Path => (is => 'ro', isa => Str, required => 1);
  has RoleArn => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'RoleArn' => 1,
                    'Path' => 1
                  },
  'types' => {
               'Path' => {
                           'type' => 'Str'
                         },
               'KMSKeyArn' => {
                                'type' => 'Str'
                              },
               'RoleArn' => {
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

Paws::Forecast::S3Config

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Forecast::S3Config object:

  $service_obj->Method(Att1 => { KMSKeyArn => $value, ..., RoleArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Forecast::S3Config object:

  $result = $service_obj->Method(...);
  $result->Att1->KMSKeyArn

=head1 DESCRIPTION

The path to the file(s) in an Amazon Simple Storage Service (Amazon S3)
bucket, and an AWS Identity and Access Management (IAM) role that
Amazon Forecast can assume to access the file(s). Optionally, includes
an AWS Key Management Service (KMS) key. This object is submitted in
the CreateDatasetImportJob and CreateForecastExportJob requests.

=head1 ATTRIBUTES


=head2 KMSKeyArn => Str

  The Amazon Resource Name (ARN) of an AWS Key Management Service (KMS)
key.


=head2 B<REQUIRED> Path => Str

  The path to an Amazon Simple Storage Service (Amazon S3) bucket or
file(s) in an Amazon S3 bucket.


=head2 B<REQUIRED> RoleArn => Str

  The ARN of the AWS Identity and Access Management (IAM) role that
Amazon Forecast can assume to access the Amazon S3 bucket or file(s).

Cross-account pass role is not allowed. If you pass a role that doesn't
belong to your account, an C<InvalidInputException> is thrown.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

