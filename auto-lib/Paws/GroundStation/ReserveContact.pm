
package Paws::GroundStation::ReserveContact;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GroundStation::Types qw/GroundStation_TagsMap/;
  has EndTime => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has GroundStation => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has MissionProfileArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has SatelliteArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has StartTime => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => GroundStation_TagsMap, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ReserveContact');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/contact');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::GroundStation::ContactIdResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Tags' => {
                           'class' => 'Paws::GroundStation::TagsMap',
                           'type' => 'GroundStation_TagsMap'
                         },
               'StartTime' => {
                                'type' => 'Str'
                              },
               'EndTime' => {
                              'type' => 'Str'
                            },
               'SatelliteArn' => {
                                   'type' => 'Str'
                                 },
               'GroundStation' => {
                                    'type' => 'Str'
                                  },
               'MissionProfileArn' => {
                                        'type' => 'Str'
                                      }
             },
  'NameInRequest' => {
                       'StartTime' => 'startTime',
                       'Tags' => 'tags',
                       'SatelliteArn' => 'satelliteArn',
                       'EndTime' => 'endTime',
                       'GroundStation' => 'groundStation',
                       'MissionProfileArn' => 'missionProfileArn'
                     },
  'IsRequired' => {
                    'GroundStation' => 1,
                    'MissionProfileArn' => 1,
                    'StartTime' => 1,
                    'SatelliteArn' => 1,
                    'EndTime' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GroundStation::ReserveContact - Arguments for method ReserveContact on L<Paws::GroundStation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ReserveContact on the
L<AWS Ground Station|Paws::GroundStation> service. Use the attributes of this class
as arguments to method ReserveContact.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ReserveContact.

=head1 SYNOPSIS

    my $groundstation = Paws->service('GroundStation');
    my $ContactIdResponse = $groundstation->ReserveContact(
      EndTime           => '1970-01-01T01:00:00',
      GroundStation     => 'MyString',
      MissionProfileArn => 'MyMissionProfileArn',
      SatelliteArn      => 'MysatelliteArn',
      StartTime         => '1970-01-01T01:00:00',
      Tags              => { 'MyString' => 'MyString', },    # OPTIONAL
    );

    # Results:
    my $ContactId = $ContactIdResponse->ContactId;

    # Returns a L<Paws::GroundStation::ContactIdResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/groundstation/ReserveContact>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndTime => Str

End time of a contact.



=head2 B<REQUIRED> GroundStation => Str

Name of a ground station.



=head2 B<REQUIRED> MissionProfileArn => Str

ARN of a mission profile.



=head2 B<REQUIRED> SatelliteArn => Str

ARN of a satellite



=head2 B<REQUIRED> StartTime => Str

Start time of a contact.



=head2 Tags => GroundStation_TagsMap

Tags assigned to a contact.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ReserveContact in L<Paws::GroundStation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

