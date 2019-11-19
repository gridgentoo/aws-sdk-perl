# Generated from default/object.tt
package Paws::SageMaker::LabelingJobForWorkteamSummary;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::SageMaker::Types qw/SageMaker_LabelCountersForWorkteam/;
  has CreationTime => (is => 'ro', isa => Str, required => 1);
  has JobReferenceCode => (is => 'ro', isa => Str, required => 1);
  has LabelCounters => (is => 'ro', isa => SageMaker_LabelCountersForWorkteam);
  has LabelingJobName => (is => 'ro', isa => Str);
  has NumberOfHumanWorkersPerDataObject => (is => 'ro', isa => Int);
  has WorkRequesterAccountId => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'LabelCounters' => {
                                    'class' => 'Paws::SageMaker::LabelCountersForWorkteam',
                                    'type' => 'SageMaker_LabelCountersForWorkteam'
                                  },
               'LabelingJobName' => {
                                      'type' => 'Str'
                                    },
               'NumberOfHumanWorkersPerDataObject' => {
                                                        'type' => 'Int'
                                                      },
               'WorkRequesterAccountId' => {
                                             'type' => 'Str'
                                           },
               'JobReferenceCode' => {
                                       'type' => 'Str'
                                     }
             },
  'IsRequired' => {
                    'CreationTime' => 1,
                    'WorkRequesterAccountId' => 1,
                    'JobReferenceCode' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::LabelingJobForWorkteamSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::LabelingJobForWorkteamSummary object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., WorkRequesterAccountId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::LabelingJobForWorkteamSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

Provides summary information for a work team.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

  The date and time that the labeling job was created.


=head2 B<REQUIRED> JobReferenceCode => Str

  A unique identifier for a labeling job. You can use this to refer to a
specific labeling job.


=head2 LabelCounters => SageMaker_LabelCountersForWorkteam

  Provides information about the progress of a labeling job.


=head2 LabelingJobName => Str

  The name of the labeling job that the work team is assigned to.


=head2 NumberOfHumanWorkersPerDataObject => Int

  The configured number of workers per data object.


=head2 B<REQUIRED> WorkRequesterAccountId => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

