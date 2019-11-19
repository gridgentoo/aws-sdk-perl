# Generated from callargs_class.tt

package Paws::RedShift::DeleteClusterSubnetGroup;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::RedShift::Types qw//;
  has ClusterSubnetGroupName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteClusterSubnetGroup');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ClusterSubnetGroupName' => {
                                             'type' => 'Str'
                                           }
             },
  'IsRequired' => {
                    'ClusterSubnetGroupName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::DeleteClusterSubnetGroup - Arguments for method DeleteClusterSubnetGroup on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteClusterSubnetGroup on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method DeleteClusterSubnetGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteClusterSubnetGroup.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    $redshift->DeleteClusterSubnetGroup(
      ClusterSubnetGroupName => 'MyString',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/DeleteClusterSubnetGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterSubnetGroupName => Str

The name of the cluster subnet group name to be deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteClusterSubnetGroup in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

