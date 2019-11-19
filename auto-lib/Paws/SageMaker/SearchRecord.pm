# Generated from default/object.tt
package Paws::SageMaker::SearchRecord;
  use Moo;
  use Types::Standard qw//;
  use Paws::SageMaker::Types qw/SageMaker_TrainingJob/;
  has TrainingJob => (is => 'ro', isa => SageMaker_TrainingJob);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TrainingJob' => {
                                  'type' => 'SageMaker_TrainingJob',
                                  'class' => 'Paws::SageMaker::TrainingJob'
                                }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::SearchRecord

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::SearchRecord object:

  $service_obj->Method(Att1 => { TrainingJob => $value, ..., TrainingJob => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::SearchRecord object:

  $result = $service_obj->Method(...);
  $result->Att1->TrainingJob

=head1 DESCRIPTION

An individual search result record that contains a single resource
object.

=head1 ATTRIBUTES


=head2 TrainingJob => SageMaker_TrainingJob

  A C<TrainingJob> object that is returned as part of a C<Search>
request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

