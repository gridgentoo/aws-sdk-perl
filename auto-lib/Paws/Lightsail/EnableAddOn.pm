# Generated from json/callargs_class.tt

package Paws::Lightsail::EnableAddOn;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Lightsail::Types qw/Lightsail_AddOnRequest/;
  has AddOnRequest => (is => 'ro', isa => Lightsail_AddOnRequest, required => 1, predicate => 1);
  has ResourceName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'EnableAddOn');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Lightsail::EnableAddOnResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceName' => {
                                   'type' => 'Str'
                                 },
               'AddOnRequest' => {
                                   'type' => 'Lightsail_AddOnRequest',
                                   'class' => 'Paws::Lightsail::AddOnRequest'
                                 }
             },
  'NameInRequest' => {
                       'ResourceName' => 'resourceName',
                       'AddOnRequest' => 'addOnRequest'
                     },
  'IsRequired' => {
                    'AddOnRequest' => 1,
                    'ResourceName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::EnableAddOn - Arguments for method EnableAddOn on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method EnableAddOn on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method EnableAddOn.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to EnableAddOn.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $EnableAddOnResult = $lightsail->EnableAddOn(
      AddOnRequest => {
        AddOnType                => 'AutoSnapshot',    # values: AutoSnapshot
        AutoSnapshotAddOnRequest => {
          SnapshotTimeOfDay => 'MyTimeOfDay',          # OPTIONAL
        },    # OPTIONAL
      },
      ResourceName => 'MyResourceName',

    );

    # Results:
    my $Operations = $EnableAddOnResult->Operations;

    # Returns a L<Paws::Lightsail::EnableAddOnResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/EnableAddOn>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AddOnRequest => Lightsail_AddOnRequest

An array of strings representing the add-on to enable or modify.



=head2 B<REQUIRED> ResourceName => Str

The name of the source resource for which to enable or modify the
add-on.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method EnableAddOn in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

