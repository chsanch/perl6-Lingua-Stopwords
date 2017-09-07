use v6.c;
unit module Lingua::Stopwords::NO;
use Lingua::Stopwords;

sub get-list ( Str $list = 'snowball' ) is export {
    my %stop-words;
    my @word-list;
    given $list {
        when 'all' {
            @word-list = <  alle at av bare begge ble blei bli blir blitt både båe da de deg dei deim deira deires dem den denne der dere deres det dette di 
                            din disse ditt du dykk dykkar då eg ein eit eitt eller elles en enn er et ett etter for fordi fra før ha hadde han hans har hennar 
                            henne hennes her hjå ho hoe honom hoss hossen hun hva hvem hver hvilke hvilken hvis hvor hvordan hvorfor i ikke ikkje ingen ingi 
                            inkje inn inni ja jeg kan kom korleis korso kun kunne kva kvar kvarhelst kven kvi kvifor man mange me med medan meg meget mellom 
                            men mi min mine mitt mot mykje ned no noe noen noka noko nokon nokor nokre nå når og også om opp oss over på samme seg selv si sia 
                            sidan siden sin sine sitt sjøl skal skulle slik so som somme somt så sånn til um upp ut uten var vart varte ved vere verte vi vil 
                            ville vore vors vort vår være vært å >;
        }
        when 'ranks-nl' {
            @word-list = <  alle at av bare begge ble blei bli blir blitt både båe da de deg dei deim deira deires dem den denne der dere deres det dette di 
                            din disse ditt du dykk dykkar då eg ein eit eitt eller elles en enn er et ett etter for fordi fra før ha hadde han hans har hennar 
                            henne hennes her hjå ho hoe honom hoss hossen hun hva hvem hver hvilke hvilken hvis hvor hvordan hvorfor i ikke ikkje ingen ingi 
                            inkje inn inni ja jeg kan kom korleis korso kun kunne kva kvar kvarhelst kven kvi kvifor man mange me med medan meg meget mellom 
                            men mi min mine mitt mot mykje ned no noe noen noka noko nokon nokor nokre nå når og også om opp oss over på samme seg selv si sia 
                            sidan siden sin sine sitt sjøl skal skulle slik so som somme somt så sånn til um upp ut uten var vart varte ved vere verte vi vil 
                            ville vore vors vort vår være vært å >;
        }
        when 'snowball' {
            @word-list = <  alle at av bare begge ble blei bli blir blitt både båe da de deg dei deim deira deires dem den denne der dere deres det dette di 
                            din disse ditt du dykk dykkar då eg ein eit eitt eller elles en enn er et ett etter for fordi fra før ha hadde han hans har hennar 
                            henne hennes her hjå ho hoe honom hoss hossen hun hva hvem hver hvilke hvilken hvis hvor hvordan hvorfor i ikke ikkje ingen ingi 
                            inkje inn inni ja jeg kan kom korleis korso kun kunne kva kvar kvarhelst kven kvi kvifor man mange me med medan meg meget mellom 
                            men mi min mine mitt mot mykje ned no noe noen noka noko nokon nokor nokre nå når og også om opp oss over på samme seg selv si sia 
                            sidan siden sin sine sitt sjøl skal skulle slik so som somme somt så sånn til um upp ut uten var vart varte ved vere verte vi vil 
                            ville vore vors vort vår være vært å >;
        }
        default {
            fail "Invalid type of list: $list.";
        }
    }

     for  @word-list -> $w {
         %stop-words{$w} = 1;
     }

    return %stop-words;
}