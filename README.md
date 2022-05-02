#STEP 1: Flutteri paigaldamine Windowsile

Süsteeminõuded:

Operatsioonisüsteemid: (64-bitine), x86-64 põhinev Windows 7 SP1 või uuem.
Kettaruum: 1,64 GB (ei sisalda IDE/tööriistade kettaruumi).
Tööriistad: Flutter sõltub sellest, kas need tööriistad on teie keskkonnas saadaval.
Windows PowerShell 5.0 või uuem (see on Windows 10-sse eelinstalleeritud).
Git for Windows 2.x, valikuga Use Git from the Windows Command Prompt.
Hangi Flutter SDK:

Paigaldage uusim Flutter SDK järgmiselt lehelt https://flutter.dev/docs/get-started/install/windows.
Ekstraktige zip-fail ja paigutage selles sisalduv Flutter soovitud Flutter SDK paigalduskohta (näiteks C:\src\flutter).
Kui soovite Flutteri käske käivitada tavalises Windowsi konsoolis, tehke järgmised sammud, et lisada Flutteri muutuja PATH keskkonnamuutujasse: 

- Sisestage Start otsinguribalt 'env' ja valige Edit environment variables for your account. 
- Kontrollige jaotises User variables, kas seal on kirje Path: 
- Kui kirje on olemas, lisage täielik tee flutter\bin, kasutades ;-t eraldusmärkina olemasolevatest väärtustest. 
- Kui sissekannet ei ole olemas, looge uus kasutajamuutuja nimega Path, mille väärtuseks on täielik tee flutter\bin'ile.
- Käivitage flutter doctor: C:\src\flutter>flutter doctor ;See käsk kontrollib teie keskkonda ja kuvab aruande teie Flutteri installimise seisu kohta. 
- Kontrollige hoolikalt väljundit, et leida muud tarkvara, mida teil võib olla vaja installeerida, või täiendavaid ülesandeid, mida tuleb täita.
- Installige Android Studio https://developer.android.com/studio
- Käivitage Android Studio ja läbige 'Android Studio Setup Wizard'. See installib uusima Android SDK, Android SDK käsurea tööriistad ja Android SDK Build-Tools, mida Flutter vajab Androidile arendamisel.
- Lubage oma seadmes Developer options ja USB debugging. Üksikasjalikud juhised on saadaval aadressil https://developer.android.com/studio/debug/dev-options.
- Paigaldage Google'i USB draiver https://developer.android.com/studio/run/win-usb
- Ühendage telefon USB-kaabli abil arvutisse. Kui seade seda küsib, lubage arvutile juurdepääs seadmele.
- Käivitage terminalis käsk flutter devices, et kontrollida, kas Flutter tuvastab teie ühendatud Android-seadme. Vaikimisi kasutab Flutter seda Android SDK versiooni, millel teie adb tööriist põhineb. Kui soovite, et Flutter kasutaks teistsugust Android SDK paigaldust, peate seadma keskkonnamuutuja ANDROID_SDK_ROOT sellesse paigalduskataloogi.
- Lubage VM kiirendus oma masinas.
- Käivitage Android Studio, klõpsake AVD Manageri ikoonil ja valige Create Virtual Device... ;Vanemates Android Studio versioonides peaksite selle asemel käivitama Android Studio > Tools > Android > AVD Manager ja valima Create Virtual Device..... (Androidi alammenüü on olemas ainult siis, kui olete Androidi projektis.) 
- Kui teil ei ole projekti avatud, võite valida Configure > AVD Manager ja Create Virtual Device...
- Valige seadme määratlus ja valige Next.
- Valige üks või mitu süsteemi kujutist nende Android-versioonide jaoks, mida soovite emuleerida, ja valige Next. Soovitatav on x86 või x86_64 kujutis.
- Emuleeritud jõudluse all valige Hardware - GLES 2.0, et lubada riistvara kiirendust https://developer.android.com/studio/run/emulator-acceleration.
- Veenduge, et AVD-konfiguratsioon on õige, ja valige Finish (Lõpeta).
- Android Virtual Device Manageris klõpsake tööriistaribal Run (Käivita). Emulaator käivitub ja kuvab valitud operatsioonisüsteemi versiooni ja seadme jaoks vaikimisi lõuendi.

#STEP 2: Redaktori seadistamine ja iDent_rakendus allalaadimine GitHubist

- Avage Android Studio
- Paigaldage Flutter ja Dart pluginad 
- Avage pluginate eelistused (File > Settings > Plugins). 
- Valige Marketplace, valige Flutteri plugin ja klõpsake nuppu Install.
- Kopeerige Githubi projekti url
- Klõpsake projekti versioonihaldusest välja ja valige Git.
- Sisestage oma projekti URL ja valige projekti jaoks soovitud kataloogi asukoht. Seejärel klõpsa kloonimise nupule.
- Valige olemasolev projekt, sest see on alla laaditud teie loodud asukohta. Pärast asukoha leidmist klõpsake OK.
- Kui projekt on android studio's avatud, peate uuendama sõltuvusi. Pakettide installimiseks klõpsake nupule Get dependencies.
- Käivitage rakendus, käivitades "main.dart"

#Flutteri paigaldamine Macile
- Klõpsake järgmisel lingil, et näha, kuidas paigaldada Flutter for Mac https://flutter.dev/docs/get-started/install/macos.
