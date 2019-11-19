# Generated from default/object.tt
package Paws::MediaConvert::NielsenConfiguration;
  use Moo;
  use Types::Standard qw/Int Str/;
  use Paws::MediaConvert::Types qw//;
  has BreakoutCode => (is => 'ro', isa => Int);
  has DistributorId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'BreakoutCode' => 'breakoutCode',
                       'DistributorId' => 'distributorId'
                     },
  'types' => {
               'DistributorId' => {
                                    'type' => 'Str'
                                  },
               'BreakoutCode' => {
                                   'type' => 'Int'
                                 }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::NielsenConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::NielsenConfiguration object:

  $service_obj->Method(Att1 => { BreakoutCode => $value, ..., DistributorId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::NielsenConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->BreakoutCode

=head1 DESCRIPTION

Settings for your Nielsen configuration. If you don't do Nielsen
measurement and analytics, ignore these settings. When you enable
Nielsen configuration (nielsenConfiguration), MediaConvert enables PCM
to ID3 tagging for all outputs in the job. To enable Nielsen
configuration programmatically, include an instance of
nielsenConfiguration in your JSON job specification. Even if you don't
include any children of nielsenConfiguration, you still enable the
setting.

=head1 ATTRIBUTES


=head2 BreakoutCode => Int

  Nielsen has discontinued the use of breakout code functionality. If you
must include this property, set the value to zero.


=head2 DistributorId => Str

  Use Distributor ID (DistributorID) to specify the distributor ID that
is assigned to your organization by Neilsen.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

