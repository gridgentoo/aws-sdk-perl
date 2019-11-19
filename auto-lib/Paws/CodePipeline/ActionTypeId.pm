# Generated from default/object.tt
package Paws::CodePipeline::ActionTypeId;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodePipeline::Types qw//;
  has Category => (is => 'ro', isa => Str, required => 1);
  has Owner => (is => 'ro', isa => Str, required => 1);
  has Provider => (is => 'ro', isa => Str, required => 1);
  has Version => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Category' => {
                               'type' => 'Str'
                             },
               'Provider' => {
                               'type' => 'Str'
                             },
               'Version' => {
                              'type' => 'Str'
                            },
               'Owner' => {
                            'type' => 'Str'
                          }
             },
  'NameInRequest' => {
                       'Provider' => 'provider',
                       'Category' => 'category',
                       'Owner' => 'owner',
                       'Version' => 'version'
                     },
  'IsRequired' => {
                    'Category' => 1,
                    'Provider' => 1,
                    'Owner' => 1,
                    'Version' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ActionTypeId

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::ActionTypeId object:

  $service_obj->Method(Att1 => { Category => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::ActionTypeId object:

  $result = $service_obj->Method(...);
  $result->Att1->Category

=head1 DESCRIPTION

Represents information about an action type.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Category => Str

  A category defines what kind of action can be taken in the stage, and
constrains the provider type for the action. Valid categories are
limited to one of the following values.


=head2 B<REQUIRED> Owner => Str

  The creator of the action being called.


=head2 B<REQUIRED> Provider => Str

  The provider of the service being called by the action. Valid providers
are determined by the action category. For example, an action in the
Deploy category type might have a provider of AWS CodeDeploy, which
would be specified as CodeDeploy. For more information, see Valid
Action Types and Providers in CodePipeline
(https://docs.aws.amazon.com/codepipeline/latest/userguide/reference-pipeline-structure.html#actions-valid-providers).


=head2 B<REQUIRED> Version => Str

  A string that describes the action version.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

