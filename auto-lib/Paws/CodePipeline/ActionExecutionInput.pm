# Generated from default/object.tt
package Paws::CodePipeline::ActionExecutionInput;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::CodePipeline::Types qw/CodePipeline_ActionConfigurationMap CodePipeline_ActionTypeId CodePipeline_ResolvedActionConfigurationMap CodePipeline_ArtifactDetail/;
  has ActionTypeId => (is => 'ro', isa => CodePipeline_ActionTypeId);
  has Configuration => (is => 'ro', isa => CodePipeline_ActionConfigurationMap);
  has InputArtifacts => (is => 'ro', isa => ArrayRef[CodePipeline_ArtifactDetail]);
  has Namespace => (is => 'ro', isa => Str);
  has Region => (is => 'ro', isa => Str);
  has ResolvedConfiguration => (is => 'ro', isa => CodePipeline_ResolvedActionConfigurationMap);
  has RoleArn => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Namespace' => 'namespace',
                       'Configuration' => 'configuration',
                       'InputArtifacts' => 'inputArtifacts',
                       'Region' => 'region',
                       'ActionTypeId' => 'actionTypeId',
                       'RoleArn' => 'roleArn',
                       'ResolvedConfiguration' => 'resolvedConfiguration'
                     },
  'types' => {
               'InputArtifacts' => {
                                     'type' => 'ArrayRef[CodePipeline_ArtifactDetail]',
                                     'class' => 'Paws::CodePipeline::ArtifactDetail'
                                   },
               'Namespace' => {
                                'type' => 'Str'
                              },
               'Configuration' => {
                                    'class' => 'Paws::CodePipeline::ActionConfigurationMap',
                                    'type' => 'CodePipeline_ActionConfigurationMap'
                                  },
               'ResolvedConfiguration' => {
                                            'class' => 'Paws::CodePipeline::ResolvedActionConfigurationMap',
                                            'type' => 'CodePipeline_ResolvedActionConfigurationMap'
                                          },
               'RoleArn' => {
                              'type' => 'Str'
                            },
               'ActionTypeId' => {
                                   'class' => 'Paws::CodePipeline::ActionTypeId',
                                   'type' => 'CodePipeline_ActionTypeId'
                                 },
               'Region' => {
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

Paws::CodePipeline::ActionExecutionInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::ActionExecutionInput object:

  $service_obj->Method(Att1 => { ActionTypeId => $value, ..., RoleArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::ActionExecutionInput object:

  $result = $service_obj->Method(...);
  $result->Att1->ActionTypeId

=head1 DESCRIPTION

Input information used for an action execution.

=head1 ATTRIBUTES


=head2 ActionTypeId => CodePipeline_ActionTypeId

  


=head2 Configuration => CodePipeline_ActionConfigurationMap

  Configuration data for an action execution.


=head2 InputArtifacts => ArrayRef[CodePipeline_ArtifactDetail]

  Details of input artifacts of the action that correspond to the action
execution.


=head2 Namespace => Str

  The variable namespace associated with the action. All variables
produced as output by this action fall under this namespace.


=head2 Region => Str

  The AWS Region for the action, such as us-east-1.


=head2 ResolvedConfiguration => CodePipeline_ResolvedActionConfigurationMap

  Configuration data for an action execution with all variable references
replaced with their real values for the execution.


=head2 RoleArn => Str

  The ARN of the IAM service role that performs the declared action. This
is assumed through the roleArn for the pipeline.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

