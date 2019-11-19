# Generated from callargs_class.tt

package Paws::RedShift::ResetClusterParameterGroup;
  use Moo;
  use Types::Standard qw/Str ArrayRef Bool/;
  use Paws::RedShift::Types qw/RedShift_Parameter/;
  has ParameterGroupName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Parameters => (is => 'ro', isa => ArrayRef[RedShift_Parameter], predicate => 1);
  has ResetAllParameters => (is => 'ro', isa => Bool, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ResetClusterParameterGroup');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::RedShift::ClusterParameterGroupNameMessage');
  class_has _result_key => (isa => Str, is => 'ro', default => 'ResetClusterParameterGroupResult');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ParameterGroupName' => 1
                  },
  'types' => {
               'ResetAllParameters' => {
                                         'type' => 'Bool'
                                       },
               'Parameters' => {
                                 'type' => 'ArrayRef[RedShift_Parameter]',
                                 'class' => 'Paws::RedShift::Parameter'
                               },
               'ParameterGroupName' => {
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

Paws::RedShift::ResetClusterParameterGroup - Arguments for method ResetClusterParameterGroup on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ResetClusterParameterGroup on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method ResetClusterParameterGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ResetClusterParameterGroup.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $ClusterParameterGroupNameMessage =
      $redshift->ResetClusterParameterGroup(
      ParameterGroupName => 'MyString',
      Parameters         => [
        {
          AllowedValues        => 'MyString',
          ApplyType            => 'static',  # values: static, dynamic; OPTIONAL
          DataType             => 'MyString',
          Description          => 'MyString',
          IsModifiable         => 1,         # OPTIONAL
          MinimumEngineVersion => 'MyString',
          ParameterName        => 'MyString',
          ParameterValue       => 'MyString',
          Source               => 'MyString',
        },
        ...
      ],                                     # OPTIONAL
      ResetAllParameters => 1,               # OPTIONAL
      );

    # Results:
    my $ParameterGroupName =
      $ClusterParameterGroupNameMessage->ParameterGroupName;
    my $ParameterGroupStatus =
      $ClusterParameterGroupNameMessage->ParameterGroupStatus;

    # Returns a L<Paws::RedShift::ClusterParameterGroupNameMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/ResetClusterParameterGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ParameterGroupName => Str

The name of the cluster parameter group to be reset.



=head2 Parameters => ArrayRef[RedShift_Parameter]

An array of names of parameters to be reset. If I<ResetAllParameters>
option is not used, then at least one parameter name must be supplied.

Constraints: A maximum of 20 parameters can be reset in a single
request.



=head2 ResetAllParameters => Bool

If C<true>, all parameters in the specified parameter group will be
reset to their default values.

Default: C<true>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ResetClusterParameterGroup in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

