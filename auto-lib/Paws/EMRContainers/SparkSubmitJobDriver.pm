# Generated by default/object.tt
package Paws::EMRContainers::SparkSubmitJobDriver;
  use Moose;
  has EntryPoint => (is => 'ro', isa => 'Str', request_name => 'entryPoint', traits => ['NameInRequest'], required => 1);
  has EntryPointArguments => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'entryPointArguments', traits => ['NameInRequest']);
  has SparkSubmitParameters => (is => 'ro', isa => 'Str', request_name => 'sparkSubmitParameters', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRContainers::SparkSubmitJobDriver

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMRContainers::SparkSubmitJobDriver object:

  $service_obj->Method(Att1 => { EntryPoint => $value, ..., SparkSubmitParameters => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMRContainers::SparkSubmitJobDriver object:

  $result = $service_obj->Method(...);
  $result->Att1->EntryPoint

=head1 DESCRIPTION

The information about job driver for Spark submit.

=head1 ATTRIBUTES


=head2 B<REQUIRED> EntryPoint => Str

The entry point of job application.


=head2 EntryPointArguments => ArrayRef[Str|Undef]

The arguments for job application.


=head2 SparkSubmitParameters => Str

The Spark submit parameters that are used for job runs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMRContainers>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

