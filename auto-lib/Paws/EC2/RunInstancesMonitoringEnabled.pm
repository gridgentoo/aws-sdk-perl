package Paws::EC2::RunInstancesMonitoringEnabled;
  use Moo;  use Types::Standard qw/Bool/;
  use Paws::EC2::Types qw//;
  has Enabled => (is => 'ro', isa => Bool, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Enabled' => {
                              'type' => 'Bool'
                            }
             },
  'NameInRequest' => {
                       'Enabled' => 'enabled'
                     },
  'IsRequired' => {
                    'Enabled' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::RunInstancesMonitoringEnabled

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::RunInstancesMonitoringEnabled object:

  $service_obj->Method(Att1 => { Enabled => $value, ..., Enabled => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::RunInstancesMonitoringEnabled object:

  $result = $service_obj->Method(...);
  $result->Att1->Enabled

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 B<REQUIRED> Enabled => Bool

  Indicates whether detailed monitoring is enabled. Otherwise, basic
monitoring is enabled.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
