use v6.c;
unit module Lingua::Stopwords::FI;
use Lingua::Stopwords;

sub get-list ( Str $list = 'snowball' ) is export {
    my %stop-words;
    my @word-list;
    given $list {
        when 'all' {
            @word-list = <  aiemmin aika aikaa aikaan aikaisemmin aikaisin aikajen aikana aikoina aikoo aikovat aina ainakaan ainakin ainoa ainoat aiomme aion 
                            aiotte aist aivan ajan alas alemmas alkuisin alkuun alla alle aloitamme aloitan aloitat aloitatte aloitattivat aloitettava 
                            aloitettevaksi aloitettu aloitimme aloitin aloitit aloititte aloittaa aloittamatta aloitti aloittivat alta aluksi alussa alusta 
                            annettavaksi annetteva annettu antaa antamatta antoi aoua apu asia asiaa asian asiasta asiat asioiden asioihin asioita asti avuksi 
                            avulla avun avutta edelle edelleen edellä edeltä edemmäs edes edessä edestä ehkä ei eikä eilen eivät eli ellei elleivät ellemme 
                            ellen ellet ellette emme en enemmän eniten ennen ensi ensimmäinen ensimmäiseksi ensimmäisen ensimmäisenä ensimmäiset ensimmäisiksi 
                            ensimmäisinä ensimmäisiä ensimmäistä ensin entinen entisen entisiä entisten entistä enää eri erittäin erityisesti eräiden eräs 
                            eräät esi esiin esillä esimerkiksi et eteen etenkin ette ettei että halua haluaa haluamatta haluamme haluan haluat haluatte 
                            haluavat halunnut halusi halusimme halusin halusit halusitte halusivat halutessa haluton he hei heidän heidät heihin heille heillä 
                            heiltä heissä heistä heitä helposti heti hetkellä hieman huolimatta huomenna hyvien hyviin hyviksi hyville hyviltä hyvin hyvinä 
                            hyvissä hyvistä hyviä hyvä hyvät hyvää hän häneen hänelle hänellä häneltä hänen hänessä hänestä hänet häntä ihan ilman ilmeisesti 
                            itse itsensä itseään ja jo johon joiden joihin joiksi joilla joille joilta joina joissa joista joita joka jokainen jokin joko 
                            joksi joku jolla jolle jolloin jolta jompikumpi jona jonka jonkin jonne joo jopa jos joskus jossa josta jota jotain joten jotenkin 
                            jotenkuten jotka jotta jouduimme jouduin jouduit jouduitte joudumme joudun joudutte joukkoon joukossa joukosta joutua joutui 
                            joutuivat joutumaan joutuu joutuvat juuri jälkeen jälleen jää kahdeksan kahdeksannen kahdella kahdelle kahdelta kahden kahdessa 
                            kahdesta kahta kahteen kai kaiken kaikille kaikilta kaikkea kaikki kaikkia kaikkiaan kaikkialla kaikkialle kaikkialta kaikkien 
                            kaikkin kaksi kannalta kannattaa kanssa kanssaan kanssamme kanssani kanssanne kanssasi kauan kauemmas kautta kehen keiden keihin 
                            keiksi keille keillä keiltä keinä keissä keistä keitten keittä keitä keneen keneksi kenelle kenellä keneltä kenen kenenä kenessä 
                            kenestä kenet kenettä kennessästä kerran kerta kertaa kesken keskimäärin ketkä ketä kiitos kohti koko kokonaan kolmas kolme kolmen 
                            kolmesti koska koskaan kovin kuin kuinka kuitenkaan kuitenkin kuka kukaan kukin kumpainen kumpainenkaan kumpi kumpikaan kumpikin 
                            kun kuten kuuden kuusi kuutta kyllä kymmenen kyse liian liki lisäksi lisää luo lähekkäin lähelle lähellä läheltä lähemmäs lähes 
                            lähinnä lähtien läpi mahdollisimman mahdollista me meidän meidät meihin meille meillä meiltä meissä meistä meitä melkein melko 
                            menee meneet menemme menen menet menette menevät meni menimme menin menit menivät mennessä mennyt menossa mihin mikin miksi mikä 
                            mikäli mikään mille milloin millä miltä minkä minne minua minulla minulle minulta minun minussa minusta minut minuun minä missä 
                            mistä miten mitkä mitä mitään moi molemmat mones monesti monet moni moniaalla moniaalle moniaalta monta muassa muiden muita muka 
                            mukaan mukaansa mukana mutta muu muualla muualle muualta muuanne muulloin muun muut muuta muutama muutaman muuten myöhemmin myös 
                            myöskin myöskään myötä ne neljä neljän neljää niiden niihin niiksi niille niillä niiltä niin niinä niissä niistä niitä noiden 
                            noihin noiksi noilla noille noilta noin noina noissa noista noita nopeammin nopeasti nopeiten nro nuo nyt näiden näihin näiksi 
                            näille näillä näiltä näin näinä näissä näissähin näissälle näissältä näissästä näistä näitä nämä ohi oikein ole olemme olen olet 
                            olette oleva olevan olevat oli olimme olin olisi olisimme olisin olisit olisitte olisivat olit olitte olivat olla olleet olli 
                            ollut oma omaa omaan omaksi omalle omalta oman omassa omat omia omien omiin omiksi omille omilta omissa omista on onkin onko ovat 
                            paikoittain paitsi pakosti paljon paremmin parempi parhaillaan parhaiten perusteella peräti pian pieneen pieneksi pienelle 
                            pienellä pieneltä pienempi pienestä pieni pienin poikki puolesta puolestaan päälle runsaasti saakka sadam sama samaa samaan 
                            samalla samallalta samallassa samallasta saman samat samoin sata sataa satojen se seitsemän sekä sen seuraavat siellä sieltä 
                            siihen siinä siis siitä sijaan siksi sille silloin sillä silti siltä sinne sinua sinulla sinulle sinulta sinun sinussa sinusta 
                            sinut sinuun sinä sisäkkäin sisällä siten sitten sitä suoraan suuntaan suuren suuret suuri suuria suurin suurten taa taas taemmas 
                            tahansa tai takaa takaisin takana takia tapauksessa tavalla tavoitteena te teidän teidät teihin teille teillä teiltä teissä teistä 
                            teitä tietysti todella toinen toisaalla toisaalle toisaalta toiseen toiseksi toisella toiselle toiselta toisemme toisen toisensa 
                            toisessa toisesta toista toistaiseksi toki tosin tuhannen tuhat tule tulee tulemme tulen tulet tulette tulevat tulimme tulin 
                            tulisi tulisimme tulisin tulisit tulisitte tulisivat tulit tulitte tulivat tulla tulleet tullut tuntuu tuo tuohon tuoksi tuolla 
                            tuolle tuolloin tuolta tuon tuona tuonne tuossa tuosta tuota tuskin tykö tähän täksi tälle tällä tällöin tältä tämä tämän tänne 
                            tänä tänään tässä tästä täten tätä täysin täytyvät täytyy täällä täältä usea useasti useimmiten usein useita uudeksi uudelleen 
                            uuden uudet uusi uusia uusien uusinta uuteen uutta vaan vai vaiheessa vaikea vaikean vaikeat vaikeilla vaikeille vaikeilta 
                            vaikeissa vaikeista vaikka vain varmasti varsin varsinkin varten vasta vastaan vastakkain verran vielä vierekkäin vieri viiden 
                            viime viimeinen viimeisen viimeksi viisi voi voidaan voimme voin voisi voit voitte voivat vuoden vuoksi vuosi vuosien vuosina 
                            vuotta vähemmän vähintään vähiten vähän välillä yhdeksän yhden yhdessä yhteen yhteensä yhteydessä yhteyteen yhtä yhtäälle yhtäällä 
                            yhtäältä yhtään yhä yksi yksin yksittäin yleensä ylemmäs yli ylös ympäri älköön älä  >;
        }
        when 'ranks-nl' {
            @word-list = <  aiemmin aika aikaa aikaan aikaisemmin aikaisin aikajen aikana aikoina aikoo aikovat aina ainakaan ainakin ainoa ainoat aiomme aion 
                            aiotte aist aivan ajan älä alas alemmas älköön alkuisin alkuun alla alle aloitamme aloitan aloitat aloitatte aloitattivat 
                            aloitettava aloitettevaksi aloitettu aloitimme aloitin aloitit aloititte aloittaa aloittamatta aloitti aloittivat alta aluksi 
                            alussa alusta annettavaksi annetteva annettu antaa antamatta antoi aoua apu asia asiaa asian asiasta asiat asioiden asioihin 
                            asioita asti avuksi avulla avun avutta edellä edelle edelleen edeltä edemmäs edes edessä edestä ehkä ei eikä eilen eivät eli ellei 
                            elleivät ellemme ellen ellet ellette emme en enää enemmän eniten ennen ensi ensimmäinen ensimmäiseksi ensimmäisen ensimmäisenä 
                            ensimmäiset ensimmäisiä ensimmäisiksi ensimmäisinä ensimmäistä ensin entinen entisen entisiä entistä entisten eräät eräiden eräs 
                            eri erittäin erityisesti esi esiin esillä esimerkiksi et eteen etenkin että ette ettei halua haluaa haluamatta haluamme haluan 
                            haluat haluatte haluavat halunnut halusi halusimme halusin halusit halusitte halusivat halutessa haluton hän häneen hänellä 
                            hänelle häneltä hänen hänessä hänestä hänet he hei heidän heihin heille heiltä heissä heistä heitä helposti heti hetkellä hieman 
                            huolimatta huomenna hyvä hyvää hyvät hyviä hyvien hyviin hyviksi hyville hyviltä hyvin hyvinä hyvissä hyvistä ihan ilman 
                            ilmeisesti itse itseään itsensä ja jää jälkeen jälleen jo johon joiden joihin joiksi joilla joille joilta joissa joista joita joka 
                            jokainen jokin joko joku jolla jolle jolloin jolta jompikumpi jonka jonkin jonne joo jopa jos joskus jossa josta jota jotain joten 
                            jotenkin jotenkuten jotka jotta jouduimme jouduin jouduit jouduitte joudumme joudun joudutte joukkoon joukossa joukosta joutua 
                            joutui joutuivat joutumaan joutuu joutuvat juuri kahdeksan kahdeksannen kahdella kahdelle kahdelta kahden kahdessa kahdesta kahta 
                            kahteen kai kaiken kaikille kaikilta kaikkea kaikki kaikkia kaikkiaan kaikkialla kaikkialle kaikkialta kaikkien kaikkin kaksi 
                            kannalta kannattaa kanssa kanssaan kanssamme kanssani kanssanne kanssasi kauan kauemmas kautta kehen keiden keihin keiksi keillä 
                            keille keiltä keinä keissä keistä keitä keittä keitten keneen keneksi kenellä kenelle keneltä kenen kenenä kenessä kenestä kenet 
                            kenettä kennessästä kerran kerta kertaa kesken keskimäärin ketä ketkä kiitos kohti koko kokonaan kolmas kolme kolmen kolmesti 
                            koska koskaan kovin kuin kuinka kuitenkaan kuitenkin kuka kukaan kukin kumpainen kumpainenkaan kumpi kumpikaan kumpikin kun kuten 
                            kuuden kuusi kuutta kyllä kymmenen kyse lähekkäin lähellä lähelle läheltä lähemmäs lähes lähinnä lähtien läpi liian liki lisää 
                            lisäksi luo mahdollisimman mahdollista me meidän meillä meille melkein melko menee meneet menemme menen menet menette menevät meni 
                            menimme menin menit menivät mennessä mennyt menossa mihin mikä mikään mikäli mikin miksi milloin minä minne minun minut missä 
                            mistä mitä mitään miten moi molemmat mones monesti monet moni moniaalla moniaalle moniaalta monta muassa muiden muita muka mukaan 
                            mukaansa mukana mutta muu muualla muualle muualta muuanne muulloin muun muut muuta muutama muutaman muuten myöhemmin myös myöskään 
                            myöskin myötä näiden näin näissä näissähin näissälle näissältä näissästä näitä nämä ne neljä neljää neljän niiden niin niistä 
                            niitä noin nopeammin nopeasti nopeiten nro nuo nyt ohi oikein ole olemme olen olet olette oleva olevan olevat oli olimme olin 
                            olisi olisimme olisin olisit olisitte olisivat olit olitte olivat olla olleet olli ollut oma omaa omaan omaksi omalle omalta oman 
                            omassa omat omia omien omiin omiksi omille omilta omissa omista on onkin onko ovat päälle paikoittain paitsi pakosti paljon 
                            paremmin parempi parhaillaan parhaiten peräti perusteella pian pieneen pieneksi pienellä pienelle pieneltä pienempi pienestä pieni 
                            pienin puolesta puolestaan runsaasti saakka sadam sama samaa samaan samalla samallalta samallassa samallasta saman samat samoin 
                            sata sataa satojen se seitsemän sekä sen seuraavat siellä sieltä siihen siinä siis siitä sijaan siksi sillä silloin silti sinä 
                            sinne sinua sinulle sinulta sinun sinussa sinusta sinut sisäkkäin sisällä sitä siten sitten suoraan suuntaan suuren suuret suuri 
                            suuria suurin suurten taa täällä täältä taas taemmas tähän tahansa tai takaa takaisin takana takia tällä tällöin tämä tämän tänä 
                            tänään tänne tapauksessa tässä tästä tätä täten tavalla tavoitteena täysin täytyvät täytyy te tietysti todella toinen toisaalla 
                            toisaalle toisaalta toiseen toiseksi toisella toiselle toiselta toisemme toisen toisensa toisessa toisesta toista toistaiseksi 
                            toki tosin tuhannen tuhat tule tulee tulemme tulen tulet tulette tulevat tulimme tulin tulisi tulisimme tulisin tulisit tulisitte 
                            tulisivat tulit tulitte tulivat tulla tulleet tullut tuntuu tuo tuolla tuolloin tuolta tuonne tuskin tykö usea useasti useimmiten 
                            usein useita uudeksi uudelleen uuden uudet uusi uusia uusien uusinta uuteen uutta vaan vähän vähemmän vähintään vähiten vai 
                            vaiheessa vaikea vaikean vaikeat vaikeilla vaikeille vaikeilta vaikeissa vaikeista vaikka vain välillä varmasti varsin varsinkin 
                            varten vasta vastaan vastakkain verran vielä vierekkäin vieri viiden viime viimeinen viimeisen viimeksi viisi voi voidaan voimme 
                            voin voisi voit voitte voivat vuoden vuoksi vuosi vuosien vuosina vuotta yhä yhdeksän yhden yhdessä yhtä yhtäällä yhtäälle 
                            yhtäältä yhtään yhteen yhteensä yhteydessä yhteyteen yksi yksin yksittäin yleensä ylemmäs yli ylös ympäri >;
        }
        when 'snowball' {
            @word-list = <  ei eivät emme en et ette että he heidän heidät heihin heille heillä heiltä heissä heistä heitä hän häneen hänelle hänellä häneltä 
                            hänen hänessä hänestä hänet häntä itse ja johon joiden joihin joiksi joilla joille joilta joina joissa joista joita joka joksi 
                            jolla jolle jolta jona jonka jos jossa josta jota jotka kanssa keiden keihin keiksi keille keillä keiltä keinä keissä keistä keitä 
                            keneen keneksi kenelle kenellä keneltä kenen kenenä kenessä kenestä kenet ketkä ketä koska kuin kuka kun me meidän meidät meihin 
                            meille meillä meiltä meissä meistä meitä mihin miksi mikä mille millä miltä minkä minua minulla minulle minulta minun minussa 
                            minusta minut minuun minä missä mistä mitkä mitä mukaan mutta ne niiden niihin niiksi niille niillä niiltä niin niinä niissä 
                            niistä niitä noiden noihin noiksi noilla noille noilta noin noina noissa noista noita nuo nyt näiden näihin näiksi näille näillä 
                            näiltä näinä näissä näistä näitä nämä ole olemme olen olet olette oli olimme olin olisi olisimme olisin olisit olisitte olisivat 
                            olit olitte olivat olla olleet ollut on ovat poikki se sekä sen siihen siinä siitä siksi sille sillä siltä sinua sinulla sinulle 
                            sinulta sinun sinussa sinusta sinut sinuun sinä sitä tai te teidän teidät teihin teille teillä teiltä teissä teistä teitä tuo 
                            tuohon tuoksi tuolla tuolle tuolta tuon tuona tuossa tuosta tuota tähän täksi tälle tällä tältä tämä tämän tänä tässä tästä tätä 
                            vaan vai vaikka yli >;
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