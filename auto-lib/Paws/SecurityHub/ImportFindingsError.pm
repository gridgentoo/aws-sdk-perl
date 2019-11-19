# Generated from default/object.tt
package Paws::SecurityHub::ImportFindingsError;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SecurityHub::Types qw//;
  has ErrorCode => (is => 'ro', isa => Str, required => 1);
  has ErrorMessage => (is => 'ro', isa => Str, required => 1);
  has Id => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ErrorMessage' => 1,
                    'ErrorCode' => 1,
                    'Id' => 1
                  },
  'types' => {
               'Id' => {
                         'type' => 'Str'
                       },
               'ErrorCode' => {
                                'type' => 'Str'
                              },
               'ErrorMessage' => {
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

Paws::SecurityHub::ImportFindingsError

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::ImportFindingsError object:

  $service_obj->Method(Att1 => { ErrorCode => $value, ..., Id => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::ImportFindingsError object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorCode

=head1 DESCRIPTION

Includes details of the list of the findings that can't be imported.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ErrorCode => Str

  The code of the error made during the C<BatchImportFindings> operation.


=head2 B<REQUIRED> ErrorMessage => Str

  The message of the error made during the C<BatchImportFindings>
operation.


=head2 B<REQUIRED> Id => Str

  The ID of the error made during the C<BatchImportFindings> operation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

