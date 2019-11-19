# Generated from default/object.tt
package Paws::SageMaker::ModelPackageValidationSpecification;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::SageMaker::Types qw/SageMaker_ModelPackageValidationProfile/;
  has ValidationProfiles => (is => 'ro', isa => ArrayRef[SageMaker_ModelPackageValidationProfile], required => 1);
  has ValidationRole => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ValidationRole' => {
                                     'type' => 'Str'
                                   },
               'ValidationProfiles' => {
                                         'class' => 'Paws::SageMaker::ModelPackageValidationProfile',
                                         'type' => 'ArrayRef[SageMaker_ModelPackageValidationProfile]'
                                       }
             },
  'IsRequired' => {
                    'ValidationProfiles' => 1,
                    'ValidationRole' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ModelPackageValidationSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::ModelPackageValidationSpecification object:

  $service_obj->Method(Att1 => { ValidationProfiles => $value, ..., ValidationRole => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::ModelPackageValidationSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->ValidationProfiles

=head1 DESCRIPTION

Specifies batch transform jobs that Amazon SageMaker runs to validate
your model package.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ValidationProfiles => ArrayRef[SageMaker_ModelPackageValidationProfile]

  An array of C<ModelPackageValidationProfile> objects, each of which
specifies a batch transform job that Amazon SageMaker runs to validate
your model package.


=head2 B<REQUIRED> ValidationRole => Str

  The IAM roles to be used for the validation of the model package.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

