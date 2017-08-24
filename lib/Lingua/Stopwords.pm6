use v6.c;

unit module Lingua::Stopwords;
say "Loading module";

sub get-stop-words ( Str $language is copy  = 'en'  , Str $encode is copy = 'UTF-8' ) is export {
    $language = uc($language);
    $encode = uc($encode);
    return " $language ... $encode "
}

#say get-stop-words;

