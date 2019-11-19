
package Paws::EC2::DescribeImportImageTasks;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef Undef Int/;
  use Paws::EC2::Types qw/EC2_Filter/;
  has DryRun => (is => 'ro', isa => Bool, predicate => 1);
  has Filters => (is => 'ro', isa => ArrayRef[EC2_Filter], predicate => 1);
  has ImportTaskIds => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeImportImageTasks');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::EC2::DescribeImportImageTasksResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ImportTaskIds' => 'ImportTaskId'
                     },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'DryRun' => {
                             'type' => 'Bool'
                           },
               'Filters' => {
                              'type' => 'ArrayRef[EC2_Filter]',
                              'class' => 'Paws::EC2::Filter'
                            },
               'ImportTaskIds' => {
                                    'type' => 'ArrayRef[Str|Undef]'
                                  }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeImportImageTasks - Arguments for method DescribeImportImageTasks on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeImportImageTasks on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeImportImageTasks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeImportImageTasks.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeImportImageTasksResult = $ec2->DescribeImportImageTasks(
      DryRun  => 1,    # OPTIONAL
      Filters => [
        {
          Name   => 'MyString',    # OPTIONAL
          Values => [
            'MyString', ...        # OPTIONAL
          ],                       # OPTIONAL
        },
        ...
      ],                           # OPTIONAL
      ImportTaskIds => [
        'MyString', ...            # OPTIONAL
      ],                           # OPTIONAL
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
    );

    # Results:
    my $ImportImageTasks = $DescribeImportImageTasksResult->ImportImageTasks;
    my $NextToken        = $DescribeImportImageTasksResult->NextToken;

    # Returns a L<Paws::EC2::DescribeImportImageTasksResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeImportImageTasks>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[EC2_Filter]

Filter tasks using the C<task-state> filter and one of the following
values: C<active>, C<completed>, C<deleting>, or C<deleted>.



=head2 ImportTaskIds => ArrayRef[Str|Undef]

The IDs of the import image tasks.



=head2 MaxResults => Int

The maximum number of results to return in a single call.



=head2 NextToken => Str

A token that indicates the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeImportImageTasks in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

