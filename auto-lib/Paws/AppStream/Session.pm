# Generated from default/object.tt
package Paws::AppStream::Session;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AppStream::Types qw/AppStream_NetworkAccessConfiguration/;
  has AuthenticationType => (is => 'ro', isa => Str);
  has ConnectionState => (is => 'ro', isa => Str);
  has FleetName => (is => 'ro', isa => Str, required => 1);
  has Id => (is => 'ro', isa => Str, required => 1);
  has MaxExpirationTime => (is => 'ro', isa => Str);
  has NetworkAccessConfiguration => (is => 'ro', isa => AppStream_NetworkAccessConfiguration);
  has StackName => (is => 'ro', isa => Str, required => 1);
  has StartTime => (is => 'ro', isa => Str);
  has State => (is => 'ro', isa => Str, required => 1);
  has UserId => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MaxExpirationTime' => {
                                        'type' => 'Str'
                                      },
               'StartTime' => {
                                'type' => 'Str'
                              },
               'StackName' => {
                                'type' => 'Str'
                              },
               'AuthenticationType' => {
                                         'type' => 'Str'
                                       },
               'State' => {
                            'type' => 'Str'
                          },
               'Id' => {
                         'type' => 'Str'
                       },
               'NetworkAccessConfiguration' => {
                                                 'class' => 'Paws::AppStream::NetworkAccessConfiguration',
                                                 'type' => 'AppStream_NetworkAccessConfiguration'
                                               },
               'FleetName' => {
                                'type' => 'Str'
                              },
               'ConnectionState' => {
                                      'type' => 'Str'
                                    },
               'UserId' => {
                             'type' => 'Str'
                           }
             },
  'IsRequired' => {
                    'StackName' => 1,
                    'UserId' => 1,
                    'FleetName' => 1,
                    'Id' => 1,
                    'State' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::Session

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppStream::Session object:

  $service_obj->Method(Att1 => { AuthenticationType => $value, ..., UserId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppStream::Session object:

  $result = $service_obj->Method(...);
  $result->Att1->AuthenticationType

=head1 DESCRIPTION

Describes a streaming session.

=head1 ATTRIBUTES


=head2 AuthenticationType => Str

  The authentication method. The user is authenticated using a streaming
URL (C<API>) or SAML 2.0 federation (C<SAML>).


=head2 ConnectionState => Str

  Specifies whether a user is connected to the streaming session.


=head2 B<REQUIRED> FleetName => Str

  The name of the fleet for the streaming session.


=head2 B<REQUIRED> Id => Str

  The identifier of the streaming session.


=head2 MaxExpirationTime => Str

  The time when the streaming session is set to expire. This time is
based on the C<MaxUserDurationinSeconds> value, which determines the
maximum length of time that a streaming session can run. A streaming
session might end earlier than the time specified in
C<SessionMaxExpirationTime>, when the C<DisconnectTimeOutInSeconds>
elapses or the user chooses to end his or her session. If the
C<DisconnectTimeOutInSeconds> elapses, or the user chooses to end his
or her session, the streaming instance is terminated and the streaming
session ends.


=head2 NetworkAccessConfiguration => AppStream_NetworkAccessConfiguration

  The network details for the streaming session.


=head2 B<REQUIRED> StackName => Str

  The name of the stack for the streaming session.


=head2 StartTime => Str

  The time when a streaming instance is dedicated for the user.


=head2 B<REQUIRED> State => Str

  The current state of the streaming session.


=head2 B<REQUIRED> UserId => Str

  The identifier of the user for whom the session was created.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

