
package Paws::MediaConvert::DeleteJobTemplate;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaConvert::Types qw//;
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteJobTemplate');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/2017-08-29/jobTemplates/{name}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'DELETE');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::MediaConvert::DeleteJobTemplateResponse');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Name' => 1
                  },
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'ParamInURI' => {
                    'Name' => 'name'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::DeleteJobTemplate - Arguments for method DeleteJobTemplate on L<Paws::MediaConvert>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteJobTemplate on the
L<AWS Elemental MediaConvert|Paws::MediaConvert> service. Use the attributes of this class
as arguments to method DeleteJobTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteJobTemplate.

=head1 SYNOPSIS

    my $mediaconvert = Paws->service('MediaConvert');
    my $DeleteJobTemplateResponse = $mediaconvert->DeleteJobTemplate(
      Name => 'My__string',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconvert/DeleteJobTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the job template to be deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteJobTemplate in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

