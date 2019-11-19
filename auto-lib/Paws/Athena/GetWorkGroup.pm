# Generated from json/callargs_class.tt

package Paws::Athena::GetWorkGroup;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Athena::Types qw//;
  has WorkGroup => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetWorkGroup');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Athena::GetWorkGroupOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'WorkGroup' => 1
                  },
  'types' => {
               'WorkGroup' => {
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

Paws::Athena::GetWorkGroup - Arguments for method GetWorkGroup on L<Paws::Athena>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetWorkGroup on the
L<Amazon Athena|Paws::Athena> service. Use the attributes of this class
as arguments to method GetWorkGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetWorkGroup.

=head1 SYNOPSIS

    my $athena = Paws->service('Athena');
    my $GetWorkGroupOutput = $athena->GetWorkGroup(
      WorkGroup => 'MyWorkGroupName',

    );

    # Results:
    my $WorkGroup = $GetWorkGroupOutput->WorkGroup;

    # Returns a L<Paws::Athena::GetWorkGroupOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/athena/GetWorkGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> WorkGroup => Str

The name of the workgroup.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetWorkGroup in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

