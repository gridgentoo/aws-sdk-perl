# Generated from callargs_class.tt

package Paws::CloudWatch::GetDashboard;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudWatch::Types qw//;
  has DashboardName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetDashboard');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CloudWatch::GetDashboardOutput');
  class_has _result_key => (isa => Str, is => 'ro', default => 'GetDashboardResult');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'DashboardName' => 1
                  },
  'types' => {
               'DashboardName' => {
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

Paws::CloudWatch::GetDashboard - Arguments for method GetDashboard on L<Paws::CloudWatch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDashboard on the
L<Amazon CloudWatch|Paws::CloudWatch> service. Use the attributes of this class
as arguments to method GetDashboard.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDashboard.

=head1 SYNOPSIS

    my $monitoring = Paws->service('CloudWatch');
    my $GetDashboardOutput = $monitoring->GetDashboard(
      DashboardName => 'MyDashboardName',

    );

    # Results:
    my $DashboardArn  = $GetDashboardOutput->DashboardArn;
    my $DashboardBody = $GetDashboardOutput->DashboardBody;
    my $DashboardName = $GetDashboardOutput->DashboardName;

    # Returns a L<Paws::CloudWatch::GetDashboardOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/monitoring/GetDashboard>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DashboardName => Str

The name of the dashboard to be described.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDashboard in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

