# Generated from json/callargs_class.tt

package Paws::AlexaForBusiness::DeleteSkillGroup;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AlexaForBusiness::Types qw//;
  has SkillGroupArn => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteSkillGroup');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::AlexaForBusiness::DeleteSkillGroupResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SkillGroupArn' => {
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

Paws::AlexaForBusiness::DeleteSkillGroup - Arguments for method DeleteSkillGroup on L<Paws::AlexaForBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteSkillGroup on the
L<Alexa For Business|Paws::AlexaForBusiness> service. Use the attributes of this class
as arguments to method DeleteSkillGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteSkillGroup.

=head1 SYNOPSIS

    my $a4b = Paws->service('AlexaForBusiness');
    my $DeleteSkillGroupResponse = $a4b->DeleteSkillGroup(
      SkillGroupArn => 'MyArn',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/a4b/DeleteSkillGroup>

=head1 ATTRIBUTES


=head2 SkillGroupArn => Str

The ARN of the skill group to delete. Required.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteSkillGroup in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

