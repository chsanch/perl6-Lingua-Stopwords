use v6.c;

unit module Lingua::Stopwords;

sub get-stop-words ( Str $language is copy  = 'en', Str $list = 'snowball') is export {
    my $module-name = 'Lingua::Stopwords::' ~ $language.uc;
    try require ::($module-name) <&get-list>;
    if ::($module-name) ~~ Failure {
        fail 'Failed to load ' ~ $module-name ~ '. Are you sure \'' ~ $language ~ '\' is a valid language code ISO? ';
    }
    my %stop-words = get-list( $list );
    return %stop-words;
}