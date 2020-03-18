package Paws::FSX::DataRepositoryTaskStatus;
  use Moose;
  has FailedCount => (is => 'ro', isa => 'Int');
  has LastUpdatedTime => (is => 'ro', isa => 'Str');
  has SucceededCount => (is => 'ro', isa => 'Int');
  has TotalCount => (is => 'ro', isa => 'Int');

1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::DataRepositoryTaskStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FSX::DataRepositoryTaskStatus object:

  $service_obj->Method(Att1 => { FailedCount => $value, ..., TotalCount => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FSX::DataRepositoryTaskStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->FailedCount

=head1 DESCRIPTION

Provides the task status showing a running total of the total number of
files to be processed, the number successfully processed, and the
number of files the task failed to process.

=head1 ATTRIBUTES


=head2 FailedCount => Int

  A running total of the number of files that the task failed to process.


=head2 LastUpdatedTime => Str

  The time at which the task status was last updated.


=head2 SucceededCount => Int

  A running total of the number of files that the task has successfully
processed.


=head2 TotalCount => Int

  The total number of files that the task will process. While a task is
executing, the sum of C<SucceededCount> plus C<FailedCount> may not
equal C<TotalCount>. When the task is complete, C<TotalCount> equals
the sum of C<SucceededCount> plus C<FailedCount>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

