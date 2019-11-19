# Generated from default/object.tt
package Paws::MediaConvert::M2tsScte35Esam;
  use Moo;
  use Types::Standard qw/Int/;
  use Paws::MediaConvert::Types qw//;
  has Scte35EsamPid => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Scte35EsamPid' => {
                                    'type' => 'Int'
                                  }
             },
  'NameInRequest' => {
                       'Scte35EsamPid' => 'scte35EsamPid'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::M2tsScte35Esam

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::M2tsScte35Esam object:

  $service_obj->Method(Att1 => { Scte35EsamPid => $value, ..., Scte35EsamPid => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::M2tsScte35Esam object:

  $result = $service_obj->Method(...);
  $result->Att1->Scte35EsamPid

=head1 DESCRIPTION

Settings for SCTE-35 signals from ESAM. Include this in your job
settings to put SCTE-35 markers in your HLS and transport stream
outputs at the insertion points that you specify in an ESAM XML
document. Provide the document in the setting SCC XML (sccXml).

=head1 ATTRIBUTES


=head2 Scte35EsamPid => Int

  Packet Identifier (PID) of the SCTE-35 stream in the transport stream
generated by ESAM.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

