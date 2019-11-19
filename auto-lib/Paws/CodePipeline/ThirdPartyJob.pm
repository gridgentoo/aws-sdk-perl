# Generated from default/object.tt
package Paws::CodePipeline::ThirdPartyJob;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodePipeline::Types qw//;
  has ClientId => (is => 'ro', isa => Str);
  has JobId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ClientId' => 'clientId',
                       'JobId' => 'jobId'
                     },
  'types' => {
               'ClientId' => {
                               'type' => 'Str'
                             },
               'JobId' => {
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

Paws::CodePipeline::ThirdPartyJob

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::ThirdPartyJob object:

  $service_obj->Method(Att1 => { ClientId => $value, ..., JobId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::ThirdPartyJob object:

  $result = $service_obj->Method(...);
  $result->Att1->ClientId

=head1 DESCRIPTION

A response to a C<PollForThirdPartyJobs> request returned by AWS
CodePipeline when there is a job to be worked on by a partner action.

=head1 ATTRIBUTES


=head2 ClientId => Str

  The C<clientToken> portion of the C<clientId> and C<clientToken> pair
used to verify that the calling entity is allowed access to the job and
its details.


=head2 JobId => Str

  The identifier used to identify the job in AWS CodePipeline.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

