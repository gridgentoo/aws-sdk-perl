# Generated from default/object.tt
package Paws::CloudFront::DistributionConfigWithTags;
  use Moo;
  use Types::Standard qw//;
  use Paws::CloudFront::Types qw/CloudFront_Tags CloudFront_DistributionConfig/;
  has DistributionConfig => (is => 'ro', isa => CloudFront_DistributionConfig, required => 1);
  has Tags => (is => 'ro', isa => CloudFront_Tags, required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Tags' => 1,
                    'DistributionConfig' => 1
                  },
  'types' => {
               'Tags' => {
                           'type' => 'CloudFront_Tags',
                           'class' => 'Paws::CloudFront::Tags'
                         },
               'DistributionConfig' => {
                                         'class' => 'Paws::CloudFront::DistributionConfig',
                                         'type' => 'CloudFront_DistributionConfig'
                                       }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::DistributionConfigWithTags

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::DistributionConfigWithTags object:

  $service_obj->Method(Att1 => { DistributionConfig => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::DistributionConfigWithTags object:

  $result = $service_obj->Method(...);
  $result->Att1->DistributionConfig

=head1 DESCRIPTION

A distribution Configuration and a list of tags to be associated with
the distribution.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DistributionConfig => CloudFront_DistributionConfig

  A distribution configuration.


=head2 B<REQUIRED> Tags => CloudFront_Tags

  A complex type that contains zero or more C<Tag> elements.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

