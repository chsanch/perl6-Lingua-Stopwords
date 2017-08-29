use v6.c;

unit module Lingua::Stopwords;

sub get-stop-words ( Str $language is copy  = 'en' ) is export {
    $language = uc($language);
    my $module-name = 'Lingua::Stopwords::' ~ $language;
    try require ::($module-name) <%stop-words>; 
    return %stop-words;
}