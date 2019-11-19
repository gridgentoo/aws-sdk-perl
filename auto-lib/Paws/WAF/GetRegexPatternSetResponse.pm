# Generated from json/callresult_class.tt

package Paws::WAF::GetRegexPatternSetResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WAF::Types qw/WAF_RegexPatternSet/;
  has RegexPatternSet => (is => 'ro', isa => WAF_RegexPatternSet);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RegexPatternSet' => {
                                      'type' => 'WAF_RegexPatternSet',
                                      'class' => 'Paws::WAF::RegexPatternSet'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WAF::GetRegexPatternSetResponse

=head1 ATTRIBUTES


=head2 RegexPatternSet => WAF_RegexPatternSet

Information about the RegexPatternSet that you specified in the
C<GetRegexPatternSet> request, including the identifier of the pattern
set and the regular expression patterns you want AWS WAF to search for.


=head2 _request_id => Str


=cut

1;