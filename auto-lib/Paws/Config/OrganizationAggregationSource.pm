# Generated from default/object.tt
package Paws::Config::OrganizationAggregationSource;
  use Moo;
  use Types::Standard qw/Bool Str Undef ArrayRef/;
  use Paws::Config::Types qw//;
  has AllAwsRegions => (is => 'ro', isa => Bool);
  has AwsRegions => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has RoleArn => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'RoleArn' => 1
                  },
  'types' => {
               'AwsRegions' => {
                                 'type' => 'ArrayRef[Str|Undef]'
                               },
               'AllAwsRegions' => {
                                    'type' => 'Bool'
                                  },
               'RoleArn' => {
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

Paws::Config::OrganizationAggregationSource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::OrganizationAggregationSource object:

  $service_obj->Method(Att1 => { AllAwsRegions => $value, ..., RoleArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::OrganizationAggregationSource object:

  $result = $service_obj->Method(...);
  $result->Att1->AllAwsRegions

=head1 DESCRIPTION

This object contains regions to set up the aggregator and an IAM role
to retrieve organization details.

=head1 ATTRIBUTES


=head2 AllAwsRegions => Bool

  If true, aggregate existing AWS Config regions and future regions.


=head2 AwsRegions => ArrayRef[Str|Undef]

  The source regions being aggregated.


=head2 B<REQUIRED> RoleArn => Str

  ARN of the IAM role used to retrieve AWS Organization details
associated with the aggregator account.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

