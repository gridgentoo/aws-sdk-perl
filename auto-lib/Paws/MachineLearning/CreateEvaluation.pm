# Generated from json/callargs_class.tt

package Paws::MachineLearning::CreateEvaluation;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MachineLearning::Types qw//;
  has EvaluationDataSourceId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has EvaluationId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has EvaluationName => (is => 'ro', isa => Str, predicate => 1);
  has MLModelId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateEvaluation');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::MachineLearning::CreateEvaluationOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MLModelId' => {
                                'type' => 'Str'
                              },
               'EvaluationName' => {
                                     'type' => 'Str'
                                   },
               'EvaluationDataSourceId' => {
                                             'type' => 'Str'
                                           },
               'EvaluationId' => {
                                   'type' => 'Str'
                                 }
             },
  'IsRequired' => {
                    'EvaluationId' => 1,
                    'EvaluationDataSourceId' => 1,
                    'MLModelId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MachineLearning::CreateEvaluation - Arguments for method CreateEvaluation on L<Paws::MachineLearning>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEvaluation on the
L<Amazon Machine Learning|Paws::MachineLearning> service. Use the attributes of this class
as arguments to method CreateEvaluation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEvaluation.

=head1 SYNOPSIS

    my $machinelearning = Paws->service('MachineLearning');
    my $CreateEvaluationOutput = $machinelearning->CreateEvaluation(
      EvaluationDataSourceId => 'MyEntityId',
      EvaluationId           => 'MyEntityId',
      MLModelId              => 'MyEntityId',
      EvaluationName         => 'MyEntityName',    # OPTIONAL
    );

    # Results:
    my $EvaluationId = $CreateEvaluationOutput->EvaluationId;

    # Returns a L<Paws::MachineLearning::CreateEvaluationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/machinelearning/CreateEvaluation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EvaluationDataSourceId => Str

The ID of the C<DataSource> for the evaluation. The schema of the
C<DataSource> must match the schema used to create the C<MLModel>.



=head2 B<REQUIRED> EvaluationId => Str

A user-supplied ID that uniquely identifies the C<Evaluation>.



=head2 EvaluationName => Str

A user-supplied name or description of the C<Evaluation>.



=head2 B<REQUIRED> MLModelId => Str

The ID of the C<MLModel> to evaluate.

The schema used in creating the C<MLModel> must match the schema of the
C<DataSource> used in the C<Evaluation>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEvaluation in L<Paws::MachineLearning>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

