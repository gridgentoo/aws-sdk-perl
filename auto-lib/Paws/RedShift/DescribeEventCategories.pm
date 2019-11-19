# Generated from callargs_class.tt

package Paws::RedShift::DescribeEventCategories;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::RedShift::Types qw//;
  has SourceType => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeEventCategories');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::RedShift::EventCategoriesMessage');
  class_has _result_key => (isa => Str, is => 'ro', default => 'DescribeEventCategoriesResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SourceType' => {
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

Paws::RedShift::DescribeEventCategories - Arguments for method DescribeEventCategories on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEventCategories on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method DescribeEventCategories.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEventCategories.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $EventCategoriesMessage = $redshift->DescribeEventCategories(
      SourceType => 'MyString',    # OPTIONAL
    );

    # Results:
    my $EventCategoriesMapList =
      $EventCategoriesMessage->EventCategoriesMapList;

    # Returns a L<Paws::RedShift::EventCategoriesMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/DescribeEventCategories>

=head1 ATTRIBUTES


=head2 SourceType => Str

The source type, such as cluster or parameter group, to which the
described event categories apply.

Valid values: cluster, cluster-snapshot, cluster-parameter-group, and
cluster-security-group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEventCategories in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

