# Generated from default/object.tt
package Paws::CloudFront::InvalidationList;
  use Moo;
  use Types::Standard qw/Bool ArrayRef Str Int/;
  use Paws::CloudFront::Types qw/CloudFront_InvalidationSummary/;
  has IsTruncated => (is => 'ro', isa => Bool, required => 1);
  has Items => (is => 'ro', isa => ArrayRef[CloudFront_InvalidationSummary]);
  has Marker => (is => 'ro', isa => Str, required => 1);
  has MaxItems => (is => 'ro', isa => Int, required => 1);
  has NextMarker => (is => 'ro', isa => Str);
  has Quantity => (is => 'ro', isa => Int, required => 1);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Items' => 'InvalidationSummary'
                     },
  'IsRequired' => {
                    'MaxItems' => 1,
                    'Marker' => 1,
                    'IsTruncated' => 1,
                    'Quantity' => 1
                  },
  'types' => {
               'Quantity' => {
                               'type' => 'Int'
                             },
               'Marker' => {
                             'type' => 'Str'
                           },
               'NextMarker' => {
                                 'type' => 'Str'
                               },
               'MaxItems' => {
                               'type' => 'Int'
                             },
               'IsTruncated' => {
                                  'type' => 'Bool'
                                },
               'Items' => {
                            'type' => 'ArrayRef[CloudFront_InvalidationSummary]',
                            'class' => 'Paws::CloudFront::InvalidationSummary'
                          }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::InvalidationList

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::InvalidationList object:

  $service_obj->Method(Att1 => { IsTruncated => $value, ..., Quantity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::InvalidationList object:

  $result = $service_obj->Method(...);
  $result->Att1->IsTruncated

=head1 DESCRIPTION

The C<InvalidationList> complex type describes the list of invalidation
objects. For more information about invalidation, see Invalidating
Objects (Web Distributions Only)
(https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html)
in the I<Amazon CloudFront Developer Guide>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> IsTruncated => Bool

  A flag that indicates whether more invalidation batch requests remain
to be listed. If your results were truncated, you can make a follow-up
pagination request using the C<Marker> request parameter to retrieve
more invalidation batches in the list.


=head2 Items => ArrayRef[CloudFront_InvalidationSummary]

  A complex type that contains one C<InvalidationSummary> element for
each invalidation batch created by the current AWS account.


=head2 B<REQUIRED> Marker => Str

  The value that you provided for the C<Marker> request parameter.


=head2 B<REQUIRED> MaxItems => Int

  The value that you provided for the C<MaxItems> request parameter.


=head2 NextMarker => Str

  If C<IsTruncated> is C<true>, this element is present and contains the
value that you can use for the C<Marker> request parameter to continue
listing your invalidation batches where they left off.


=head2 B<REQUIRED> Quantity => Int

  The number of invalidation batches that were created by the current AWS
account.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

