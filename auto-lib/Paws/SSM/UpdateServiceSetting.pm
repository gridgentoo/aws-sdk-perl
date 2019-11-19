# Generated from json/callargs_class.tt

package Paws::SSM::UpdateServiceSetting;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SSM::Types qw//;
  has SettingId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has SettingValue => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateServiceSetting');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SSM::UpdateServiceSettingResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SettingId' => {
                                'type' => 'Str'
                              },
               'SettingValue' => {
                                   'type' => 'Str'
                                 }
             },
  'IsRequired' => {
                    'SettingId' => 1,
                    'SettingValue' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::UpdateServiceSetting - Arguments for method UpdateServiceSetting on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateServiceSetting on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method UpdateServiceSetting.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateServiceSetting.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $UpdateServiceSettingResult = $ssm->UpdateServiceSetting(
      SettingId    => 'MyServiceSettingId',
      SettingValue => 'MyServiceSettingValue',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/UpdateServiceSetting>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SettingId => Str

The ID of the service setting to update.



=head2 B<REQUIRED> SettingValue => Str

The new value to specify for the service setting.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateServiceSetting in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

