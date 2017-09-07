use v6.c;
unit module Lingua::Stopwords::HE;
use Lingua::Stopwords;

sub get-list ( Str $list is copy = 'ranks-nl' ) is export {
    my %stop-words;
    my @word-list;

    @word-list = <  א אביב אבל אגב אדם אהבה או אוהב אוהבים אוהבת אוכל אולי אומר אופן אופנה אותה אותו אותי אותך אותם אז 
                    אחד אחר אחרי אחרים אחרת אחת אי איזה איך אין אינטרנט איפה איתו אך אל אלא אלה אלו אם אמא אמר אנו אנחנו 
                    אני אנשים אף אפילו אפשר אצלי אשמח את אתה אתכם אתם ב בא באופן באמת בארץ בבית בבקשה בגלל בדיוק בדרך בה 
                    בהצלחה בו בואו בוקר בזה בטוח ביום ביותר בין בית בכל בכלל בלי במה במיוחד במקום בן בנושא בני בסוף 
                    בעולם בעיה בעיקר בעלי בעמוד בערך בפורום בפורומים בפרס בצורה בצל בר ברור בשביל בשלב בת בתוך בתפוז ג 
                    גדול גדולה גיל גם גרוע גרועים גרם ד דבר דברים דווקא די דקות דרך ה האהבה האחת האלה האם האמת האנשים 
                    הבא הבלוג הדבר ההודעות ההורים ההכנה הוא הולך הורים הזאת הזה הזו הזמן החג החגים החדש החדשה החיים 
                    החמשיר היא היה היו היום היחידה הייתה הייתי הילדים היתה הכבוד הכי הכל הכלב הלב הם המון המוצלח המשחק 
                    הן הנהלת העולם הפורום הפורומים הצטרפו הקהילה הראשון הראשי הרבה השבוע השנה השני ו ואז ואם ואני ואת 
                    ואתם וגם והוא והעולם וזה וחצי ויופי ויש וכאן וכל ולא ולכן ולנהל ומה ועד ועוד ועל ועם זאת זה זו זמן ח 
                    חבר חדש חוץ חושב חושבת חיים חלום חלות חלק חצי חשוב טוב טובה טובים טיפוח טיפים י יהיה יהיו יודע יודעת 
                    יום יוצא יותר יכול יכולה ילדים ימי יפה יש ישראל כ כאלה כאן כאשר כבר כדאי כדי כולם כולנו כוס כזה כי 
                    כך ככה כל כלום כמה כמו כמובן כמעט כן כנראה כסף כף כפות כפית כרגע כשאנחנו כתובות ל לא לאחר לב לבד 
                    לבחור לבן לבשל לגבי לדבר לדעת לדעתי לדרך לה להביא להגיד להגיע להגשים להוסיף להיות להכנס להם לו לזה 
                    לחג לחלוטין לי לילדים לך לכולם לכל לכם ללא ללכת למה למי למען למרות למשחק למשל לנו לניהול לעולם לעזור 
                    לעצב לעשות לפורום לפחות לפי לפני לפעמים לקבל לקחת לקנות לקרוא לראות לראש לתרום לתת ם מ מאד מאוד 
                    מאמין מגיע מדברים מדובר מדי מה מהם מודיע מוזמנים מול מוסיפים מזה מזל מזמין מזמינים מחפשים מי מיכל 
                    מים מישהו מכבי מכל מלא מלח ממנו ממש מן מנהל מנהלת מספיק מספר מעט מעל מעניין מצאתי מצב מקווה מקום 
                    מקומה מקרה מראש משהו משחק משחקים מתאמצים מתוך מתכון נגד נהיה נוספים נועית נושא ניהול נילוות ניתן 
                    נכון נראה נשמח נשמת ס סוכר סוף ספר סתם ע עבודה עד עדיין עדיף עוד עולה עוף עושה עושים עכשיו על עליו 
                    עם עצמו ערוץ פה פורום פורומים פחות פלפל פנינה פעם פעמים פרטים פשוט צריך צריכה ק קודם קטן קטנה קל קמח 
                    קצת קרן קשה קשר ר ראיתי ראש ראשון רבה רגל רגע רואה רוב רוצה רוצים רע רעיונות רק ש שאין שאלה שאם שאנו 
                    שאנחנו שאני שאת שאתה שבוע שגם שדרות שהוא שהיא שהיה שהם שוב שווה שום שוקולד שזה שחור שחקן שיהיה שיש 
                    שכל של שלא שלה שלהם שלו שלום שלי שלך שלכם שלנו שם שמזינים שמח שמן שנה שני שנים שעה שעות ת תהיה תודה 
                    תחרות תמונה תמונות תמיד תפוז תשובות ‡ >;

     for  @word-list -> $w {
         %stop-words{$w} = 1;
     }

    return %stop-words;
}