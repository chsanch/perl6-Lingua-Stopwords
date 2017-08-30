use v6;
unit module Lingua::Stopwords::ES;
use Lingua::Stopwords;


our %stop-words is export;

for < a al algo alguna algunas alguno algunos algún ambos ampleamos ante antes aquel aquellas aquellos
aqui arriba atras bajo bastante bien cada cierta ciertas cierto ciertos como con conseguimos
conseguir consigo consigue consiguen consigues contra cual cuando de del dentro desde donde dos
durante e el ella ellas ellos empleais emplean emplear empleas empleo en encima entonces entre era
erais eramos eran eras eres es esa esas ese eso esos esta estaba estabais estaban estabas estad
estada estadas estado estados estais estamos estan estando estar estaremos estará estarán estarás
estaré estaréis estaría estaríais estaríamos estarían estarías estas este estemos esto estos estoy
estuve estuviera estuvierais estuvieran estuvieras estuvieron estuviese estuvieseis estuviesen
estuvieses estuvimos estuviste estuvisteis estuviéramos estuviésemos estuvo está estábamos estáis
están estás esté estéis estén estés fin fue fuera fuerais fueran fueras fueron fuese fueseis fuesen
fueses fui fuimos fuiste fuisteis fuéramos fuésemos gueno ha haber habida habidas habido habidos
habiendo habremos habrá habrán habrás habré habréis habría habríais habríamos habrían habrías habéis
había habíais habíamos habían habías hace haceis hacemos hacen hacer haces hago han has hasta hay
haya hayamos hayan hayas hayáis he hemos hube hubiera hubierais hubieran hubieras hubieron hubiese
hubieseis hubiesen hubieses hubimos hubiste hubisteis hubiéramos hubiésemos hubo incluso intenta
intentais intentamos intentan intentar intentas intento ir la largo las le les lo los me mi mientras mio mis modo mucho muchos muy más mí mía mías mío míos nada ni no nos nosotras nosotros nuestra
nuestras nuestro nuestros o os otra otras otro otros para pero poco podeis podemos poder podria
podriais podriamos podrian podrias por porque porqué primero puede pueden puedo que quien quienes
qué sabe sabeis sabemos saben saber sabes se sea seamos sean seas ser seremos será serán serás seré
seréis sería seríais seríamos serían serías seáis si sido siendo sin sobre sois solamente solo somos
son soy su sus suya suyas suyo suyos sí también tanto te tendremos tendrá tendrán tendrás tendré
tendréis tendría tendríais tendríamos tendrían tendrías tened teneis tenemos tener tenga tengamos
tengan tengas tengo tengáis tenida tenidas tenido tenidos teniendo tenéis tenía teníais teníamos
tenían tenías ti tiempo tiene tienen tienes todo todos trabaja trabajais trabajamos trabajan
trabajar trabajas trabajo tras tu tus tuve tuviera tuvierais tuvieran tuvieras tuvieron tuviese
tuvieseis tuviesen tuvieses tuvimos tuviste tuvisteis tuviéramos tuviésemos tuvo tuya tuyas tuyo
tuyos tú ultimo un una unas uno unos usa usais usamos usan usar usas uso va vais valor vamos van
vaya verdad verdadera verdadero vosotras vosotros voy vuestra vuestras vuestro vuestros y ya yo él
éramos > -> $w {
    %stop-words{$w} = 1;
}