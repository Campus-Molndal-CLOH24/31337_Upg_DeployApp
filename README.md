Grupparbete - 31337
Medverkande medlemmar: Fredrik, Niklas, Megan, Dennis.

Uppgiftens instruktioner finns här: https://cloud-developer.educ8.se/clo/2.-basic-cloud-applications/4.-tutorials/8.-use-github-actions-to-deploy-your-app/index.html

# Anteckningar
+ Bytte ut .Net 8.0 till 9.0 via backports.
+ La också till så skriptet (provisioning) skriver ut VMens IP-adress.
+ Krånglade runt lite med portar då vi trodde det var felet först, nmap gav oss svaret att porten var stängd. Så därför började vi där, men det visade sig lösa sig på annat sätt, se nästa punkt.
+ Fick problem då vi bytte namn på projektet, tog en stund att komma på vad det var. men hittade tillslut att det var en path i cloud-init som var fel.