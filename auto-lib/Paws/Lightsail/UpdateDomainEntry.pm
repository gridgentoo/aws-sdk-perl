# Generated from json/callargs_class.tt

package Paws::Lightsail::UpdateDomainEntry;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Lightsail::Types qw/Lightsail_DomainEntry/;
  has DomainEntry => (is => 'ro', isa => Lightsail_DomainEntry, required => 1, predicate => 1);
  has DomainName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateDomainEntry');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Lightsail::UpdateDomainEntryResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'DomainName' => 1,
                    'DomainEntry' => 1
                  },
  'NameInRequest' => {
                       'DomainEntry' => 'domainEntry',
                       'DomainName' => 'domainName'
                     },
  'types' => {
               'DomainEntry' => {
                                  'type' => 'Lightsail_DomainEntry',
                                  'class' => 'Paws::Lightsail::DomainEntry'
                                },
               'DomainName' => {
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

Paws::Lightsail::UpdateDomainEntry - Arguments for method UpdateDomainEntry on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDomainEntry on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method UpdateDomainEntry.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDomainEntry.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $UpdateDomainEntryResult = $lightsail->UpdateDomainEntry(
      DomainEntry => {
        Id      => 'MyNonEmptyString',                               # OPTIONAL
        IsAlias => 1,                                                # OPTIONAL
        Name    => 'MyDomainName',                                   # OPTIONAL
        Options => { 'MyDomainEntryOptionsKeys' => 'Mystring', },    # OPTIONAL
        Target  => 'Mystring',
        Type    => 'MyDomainEntryType',                              # OPTIONAL
      },
      DomainName => 'MyDomainName',

    );

    # Results:
    my $Operations = $UpdateDomainEntryResult->Operations;

    # Returns a L<Paws::Lightsail::UpdateDomainEntryResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/UpdateDomainEntry>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainEntry => Lightsail_DomainEntry

An array of key-value pairs containing information about the domain
entry.



=head2 B<REQUIRED> DomainName => Str

The name of the domain recordset to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDomainEntry in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

