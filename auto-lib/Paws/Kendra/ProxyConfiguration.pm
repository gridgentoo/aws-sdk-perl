# Generated by default/object.tt
package Paws::Kendra::ProxyConfiguration;
  use Moose;
  has Credentials => (is => 'ro', isa => 'Str');
  has Host => (is => 'ro', isa => 'Str', required => 1);
  has Port => (is => 'ro', isa => 'Int', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::ProxyConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kendra::ProxyConfiguration object:

  $service_obj->Method(Att1 => { Credentials => $value, ..., Port => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kendra::ProxyConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Credentials

=head1 DESCRIPTION

Provides the configuration information for a web proxy to connect to
website hosts.

=head1 ATTRIBUTES


=head2 Credentials => Str

Your secret ARN, which you can create in AWS Secrets Manager
(https://docs.aws.amazon.com/secretsmanager/latest/userguide/intro.html)

The credentials are optional. You use a secret if web proxy credentials
are required to connect to a website host. Amazon Kendra currently
support basic authentication to connect to a web proxy server. The
secret stores your credentials.


=head2 B<REQUIRED> Host => Str

The name of the website host you want to connect to via a web proxy
server.

For example, the host name of https://a.example.com/page1.html is
"a.example.com".


=head2 B<REQUIRED> Port => Int

The port number of the website host you want to connect to via a web
proxy server.

For example, the port for https://a.example.com/page1.html is 443, the
standard port for HTTPS.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

