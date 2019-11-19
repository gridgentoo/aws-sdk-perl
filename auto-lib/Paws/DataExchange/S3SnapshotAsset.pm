# Generated from default/object.tt
package Paws::DataExchange::S3SnapshotAsset;
  use Moo;
  use Types::Standard qw/Num/;
  use Paws::DataExchange::Types qw//;
  has Size => (is => 'ro', isa => Num, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Size' => {
                           'type' => 'Num'
                         }
             },
  'IsRequired' => {
                    'Size' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::S3SnapshotAsset

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DataExchange::S3SnapshotAsset object:

  $service_obj->Method(Att1 => { Size => $value, ..., Size => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DataExchange::S3SnapshotAsset object:

  $result = $service_obj->Method(...);
  $result->Att1->Size

=head1 DESCRIPTION

The S3 object that is the asset.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Size => Num

  The size of the S3 object that is the object.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DataExchange>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

