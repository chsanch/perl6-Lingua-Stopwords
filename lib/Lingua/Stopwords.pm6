use v6.c;

unit module Lingua::Stopwords;

sub get-stop-words ( Str $language is copy  = 'en'  , Str $encode is copy = 'UTF-8' ) is export {
    $language = uc($language);
    $encode = uc($encode);
    try use ::($language);  
    if ::($language) ~~ Failure {
        say "Failed to load Foo!";
    } 

}

#say get-stop-words;

