# Generated from default/object.tt
package Paws::KinesisAnalyticsV2::InputProcessingConfigurationUpdate;
  use Moo;
  use Types::Standard qw//;
  use Paws::KinesisAnalyticsV2::Types qw/KinesisAnalyticsV2_InputLambdaProcessorUpdate/;
  has InputLambdaProcessorUpdate => (is => 'ro', isa => KinesisAnalyticsV2_InputLambdaProcessorUpdate, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'InputLambdaProcessorUpdate' => {
                                                 'type' => 'KinesisAnalyticsV2_InputLambdaProcessorUpdate',
                                                 'class' => 'Paws::KinesisAnalyticsV2::InputLambdaProcessorUpdate'
                                               }
             },
  'IsRequired' => {
                    'InputLambdaProcessorUpdate' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::InputProcessingConfigurationUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalyticsV2::InputProcessingConfigurationUpdate object:

  $service_obj->Method(Att1 => { InputLambdaProcessorUpdate => $value, ..., InputLambdaProcessorUpdate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalyticsV2::InputProcessingConfigurationUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->InputLambdaProcessorUpdate

=head1 DESCRIPTION

For an SQL-based Amazon Kinesis Data Analytics application, describes
updates to an InputProcessingConfiguration.

=head1 ATTRIBUTES


=head2 B<REQUIRED> InputLambdaProcessorUpdate => KinesisAnalyticsV2_InputLambdaProcessorUpdate

  Provides update information for an InputLambdaProcessor.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

