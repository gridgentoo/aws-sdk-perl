# Generated from default/object.tt
package Paws::Config::ConformancePackEvaluationFilters;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::Config::Types qw//;
  has ComplianceType => (is => 'ro', isa => Str);
  has ConfigRuleNames => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has ResourceIds => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has ResourceType => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceType' => {
                                   'type' => 'Str'
                                 },
               'ResourceIds' => {
                                  'type' => 'ArrayRef[Str|Undef]'
                                },
               'ComplianceType' => {
                                     'type' => 'Str'
                                   },
               'ConfigRuleNames' => {
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

Paws::Config::ConformancePackEvaluationFilters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::ConformancePackEvaluationFilters object:

  $service_obj->Method(Att1 => { ComplianceType => $value, ..., ResourceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::ConformancePackEvaluationFilters object:

  $result = $service_obj->Method(...);
  $result->Att1->ComplianceType

=head1 DESCRIPTION

Filters a conformance pack by AWS Config rule names, compliance types,
AWS resource types, and resource IDs.

=head1 ATTRIBUTES


=head2 ComplianceType => Str

  Filters the results by compliance.

The allowed values are C<COMPLIANT> and C<NON_COMPLIANT>.


=head2 ConfigRuleNames => ArrayRef[Str|Undef]

  Filters the results by AWS Config rule names.


=head2 ResourceIds => ArrayRef[Str|Undef]

  Filters the results by resource IDs.


=head2 ResourceType => Str

  Filters the results by the resource type (for example,
C<"AWS::EC2::Instance">).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

