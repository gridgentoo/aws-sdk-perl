# Generated from default/object.tt
package Paws::ECS::Ulimit;
  use Moo;
  use Types::Standard qw/Int Str/;
  use Paws::ECS::Types qw//;
  has HardLimit => (is => 'ro', isa => Int, required => 1);
  has Name => (is => 'ro', isa => Str, required => 1);
  has SoftLimit => (is => 'ro', isa => Int, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SoftLimit' => {
                                'type' => 'Int'
                              },
               'HardLimit' => {
                                'type' => 'Int'
                              },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'SoftLimit' => 'softLimit',
                       'HardLimit' => 'hardLimit',
                       'Name' => 'name'
                     },
  'IsRequired' => {
                    'HardLimit' => 1,
                    'Name' => 1,
                    'SoftLimit' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::Ulimit

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::Ulimit object:

  $service_obj->Method(Att1 => { HardLimit => $value, ..., SoftLimit => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::Ulimit object:

  $result = $service_obj->Method(...);
  $result->Att1->HardLimit

=head1 DESCRIPTION

The C<ulimit> settings to pass to the container.

=head1 ATTRIBUTES


=head2 B<REQUIRED> HardLimit => Int

  The hard limit for the ulimit type.


=head2 B<REQUIRED> Name => Str

  The C<type> of the C<ulimit>.


=head2 B<REQUIRED> SoftLimit => Int

  The soft limit for the ulimit type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

