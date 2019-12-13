1η Εργασία - Εκφώνηση

ΧΑΡΟΚΟΠΕΙΟ ΠΑΝΕΠΙΣΤΗΜΙΟ, ΤΜΗΜΑ ΠΛΗΡΟΦΟΡΙΚΗΣ ΚΑΙ ΤΗΛΕΜΑΤΙΚΗΣ, Ακαδημαϊκό
έτος 2019-2020

3ο εξάμηνο, Μάθημα: Λειτουργικά Συστήματα - 1η Εργασία

Λειτουργικά Συστήματα : 1η Εργασία

Εισαγωγή στο UNIX - Shell scripts

###  {#h.50l37gmgwtol .c29}

Άσκηση 1 (2 μονάδες) {#h.k9iq91g8mzh2 .c8}
--------------------

Εμφανίστε τα 10 μεγαλυτερα αρχεία που εχετε στο home directory σας και
σε ολους τους υποκαταλογους, ταξινομημένα από το μεγαλύτερο προς το
μικρότερο

Ενδεικτικό αποτέλεσμα εκτέλεσης της εντολής:

+--------------------------------------------------------------------------+
| 4,3G        ./.m2/repository/.cache/m2e/1.13.0/05b0fe8524860bd73cbb07ef3 |
| 0fb34cc/min/\_b6.cfs                                                     |
|                                                                          |
| 4,3G        ./eclipse-workspace/.metadata/.plugins/org.eclipse.m2e.core/ |
| nexus/05b0fe8524860bd73cbb07ef30fb34cc/\_b6.cfs                          |
|                                                                          |
| 1,7G        ./Recordins/2019-11-05 10-33-23.mp4                          |
|                                                                          |
| 1,4G        ./Recordins/2019-11-19 10-47-18.mp4                          |
|                                                                          |
| 1,4G        ./Recordins/2019-11-12 10-42-10.mp4                          |
|                                                                          |
| 1,4G        ./Recordins/2019-11-08 16-14-44.mp4                          |
|                                                                          |
| 1,4G        ./Recordins/2019-11-06 17-17-11.mp4                          |
|                                                                          |
| 1,2G        ./Recordins/2019-11-13 18-27-28.mp4                          |
|                                                                          |
| 1,1G        ./Recordins/2019-11-13 17-16-32.mp4                          |
|                                                                          |
| 1006M        ./Recordins/2019-11-20 17-17-41.mp4                         |
+--------------------------------------------------------------------------+

Hint: Χρησιμοποιήστε τις εντολές du, sort, find

Άσκηση 2 (2 μονάδες) {#h.285wkka0kb82 .c8}
--------------------

Δημιουργήστε ένα shell script το οποίο να εμφανίζει πληροφορίες για ένα
χρήστη. Η λογική του θα είναι η εξής:

Πρώτα θα ελέγχει αν ο χρήστης είναι τοπικός (θα ελέγχει το /etc/passwd)
και θα εμφανίζει το όνομα που είναι δηλωμένο εκεί (πεδίο 5) . Αν δεν τον
βρει εκεί θα δοκιμάζει να δει αν είναι απομακρυσμένος χρήστης (θα
χρησιμοποιεί την εντολή getent passwd).

Παράδειγμα χρήσης:

+--------------------------------------------------------------------------+
| ./userinfo.sh tsadimas\                                                  |
| Tsadimas Anargyros                                                       |
+--------------------------------------------------------------------------+

Hint: Χρησιμοποιήστε τις εντολές: awk

Άσκηση 3 (1 μονάδα) {#h.x4wx3d41m6o0 .c8}
-------------------

Δημιουργήστε ένα shell script το οποίο να εμφανίζει το ποσοστό του χώρου
που χρησιμοποιείτε στο storage. Εμφανίστε το ποσοστό φτιάχνοντας ένα
alias με όνομα used-space.

Κάθε χρήστης έχει quota 5GB.

 Ενδεικτικό αποτέλεσμα εκτέλεσης της εντολής:

+--------------------------------------------------------------------------+
| Using 60% of quota (3.0/5.0 GB)                                          |
+--------------------------------------------------------------------------+

Που σημαίνει ότι χρησιμοποιείτε το 60% του χώρου.

Hint: Χρησιμοποιήστε τις εντολές du, bc και τα αρχεία εκκίνησης του bash

Άσκηση 4 (2 μονάδες) {#h.2h4xdm8bsfpx .c8}
--------------------

Δημιουργήστε ένα shell script το οποίο να παίρνει σαν παράμετρο το
username ενός χρήστη και να στέλνει μήνυμα σε αυτόν τον χρήστη,
χρησιμοποιώντας την εντολή write.

Παράδειγμα:

+--------------------------------------------------------------------------+
| ./send\_message tsadimas\                                                |
| Enter your message: Hello user!\                                         |
| Message sent!                                                            |
+--------------------------------------------------------------------------+

Φροντιστε να κανετε τους απαραίτητους ελέγχους:

-   Αν υπάρχει η εντολή write
-   Αν υπάρχει ο χρήστης
-   Αν ο χρήστης είναι συνδεδεμένος σε κάποιο terminal
-   Αν η write εκτελέστηκε επιτυχώς ή όχι

Άσκηση 5 (3 μονάδες)

Δημιουργήστε ένα shell script το οποίο να αντλεί jobs από το [The GitHub
Jobs
API](https://www.google.com/url?q=https://jobs.github.com/api&sa=D&ust=1576198569045000)

Θα ζητά από το χρήστη περιγραφή και τοποθεσία (παράμετροι description
και location του API) και θα εμφανίζει:

-   Εταιρεία (company)
-   Τίτλο (title)

./search\_job.sh “Python” “New York”

+--------------------------------------------------------------------------+
| {\                                                                       |
| "company": "The Public Theater",\                                        |
| "title": "Web Developer"\                                                |
| }\                                                                       |
| {\                                                                       |
| "company": "Aon Cyber Solutions",\                                       |
| "title": "Cybersecurity Firm Seeks Senior Developer"\                    |
| }\                                                                       |
| {\                                                                       |
| "company": "Sesame",\                                                    |
| "title": "Software engineer (back end)"\                                 |
| }\                                                                       |
| {\                                                                       |
| "company": "New York University",\                                       |
| "title": "Technology Solutions Developer"\                               |
| }                                                                        |
+--------------------------------------------------------------------------+

Για το σκοπό αυτής της άσκησης πρέπει να δείτε τις εντολές curl και jq.
H jq αν δεν υπάρχει στο σύστημά σας πρέπει να την εγκαταστήσετε.

[https://www.keycdn.com/support/popular-curl-examples](https://www.google.com/url?q=https://www.keycdn.com/support/popular-curl-examples&sa=D&ust=1576198569046000) 

[https://linuxhint.com/bash\_jq\_command/](https://www.google.com/url?q=https://linuxhint.com/bash_jq_command/&sa=D&ust=1576198569046000) 

[https://programminghistorian.org/en/lessons/json-and-jq](https://www.google.com/url?q=https://programminghistorian.org/en/lessons/json-and-jq&sa=D&ust=1576198569046000)

Hint:  Χρησιμοποιήστε τις εντολές curl, jq.

Άσκηση 6 (5 μονάδες)

Θέλουμε να δημιουργήσουμε ένα shell script το οποίο να λειτουργεί σαν
todo list.  Όταν θα εκκινείται θα εμφανίζει ένα menu με τις εξής
επιλογές:

1.  Insert Task
2.  Delete Task
3.  Modify Task
4.  Search Task
5.  Preview Tasks
6.  Preview Daily Tasks
7.  Quit

Insert Task {#h.jy175wgen0nx .c8}
-----------

Ζητά από το χρήστη το όνομα του task. Θα το καταχωρεί με τη μορφή

task-name:date

 Η ημερομηνία θα είναι της μορφής ΗΗΜΜΕΕΩΩΛΛ δηλαδή 221120191200
(22-11-2019 12:00) και θα είναι και το μοναδικό χαρακτηριστικό για τα
tasks (κάτι σαν πρωτεύον κλειδί).

Θα τα αποθηκεύει στο αρχείο των γεγονότων το οποίο θα έχει όνομα
todo.list.

Κάθε γραμμή του αρχείου θα είναι ως εξής:

Ημερομηνία (κωδικοποιημένη), Όνομα

+--------------------------------------------------------------------------+
| 221120191200:The first task                                              |
+--------------------------------------------------------------------------+

Delete Task {#h.5pazxk1dkahy .c8}
-----------

Θα εμφανίζει τη λίστα με τα tasks και ο χρήστης θα επιλέξει ένα από αυτά
για διαγραφή.

Modify Task {#h.3lkbc4xragj1 .c8}
-----------

Θα εμφανίζει τη λίστα με τα tasks και ο χρήστης θα επιλέξει ένα από αυτά
για τροποποίηση.

Search Task {#h.y3k32r5crxej .c8}
-----------

Θα ζητά από το χρήστη  κάποιο στοιχείο του task και θα εμφανίζει τις
γραμμές που ταιριάζουν με αυτό.

Preview Tasks {#h.7qoscjb6k41h .c8}
-------------

Θα εμφανίζει ταξινομημένες τις εγγραφές των tasks από σήμερα και μετά.

Preview Daιly Tasks {#h.uvc4o8wmoe3o .c8}
-------------------

Θα εμφανίζει ταξινομημένες τις εγγραφές των tasks για μια σήμερα

Hint: Χρησιμοποιήστε τις εντολές read, select, grep, sort, awk και
[functions](https://www.google.com/url?q=https://linuxize.com/post/bash-functions/&sa=D&ust=1576198569049000)

+--------------------------------------------------------------------------+
| ./todo-list.sh\                                                          |
| 1) insert 3) edit        5) preview 7) quit\                             |
| 2) delete 4) search        6) daily\                                     |
| What you want to do?                                                     |
+--------------------------------------------------------------------------+

 

Χρήσιμες συμβουλές:

-   Αρχικά το αρχείο todo.list δεν θα υπάρχει. Φροντίστε να το
    δημιουργήσετε όταν χρειαστεί να αποθηκεύσετε δεδομένα σε αυτό
-   Επίσης, φροντίστε να μην εμφανίζονται τα σφάλματα φλοιού στον
    χρήστη, αλλά ένα δικό σας μήνυμα (παράδειγμα αν επιλέξει να δει τα
    περιεχόμενα του αρχείου και δεν υπάρχει το αρχείο)
-   Αν κάνετε κάποιες παραδοχές να τις αναφέρετε στην αναφορά σας.

Παρατηρήσεις {#h.bp1r8n59bi4k .c41}
============

-   Πριν από όλα θα πρέπει να δηλώσετε την πρόθεσή σας να υποβάλετε
    εργασία. Αυτό θα γίνει μέσω της φόρμας
     [https://forms.gle/MjcDmqyLmTnDvBas5](https://www.google.com/url?q=https://forms.gle/MjcDmqyLmTnDvBas5&sa=D&ust=1576198569051000) ΑΥΤΟ
    ΕΙΝΑΙ ΥΠΟΧΡΕΩΤΙΚΟ ΩΣΤΕ ΝΑ ΔΗΜΙΟΥΡΓΗΘΟΥΝ ΟΙ ΚΑΤΑΛΟΓΟΙ ΣΑΣ ΚΑΙ ΝΑ
    ΥΠΟΒΑΛΛΕΤΕ ΤΑ ΑΡΧΕΙΑ ΣΑΣ.
-   Όλες οι εντολές και τα shell scripts θα πρέπει να εκτελούνται σε
    λειτουργικό σύστημα  Linux.
-   Να παραδώσετε την εργασία σας μέσα από το e-class μέχρι την
    Παρασκευή 13 Δεκεμβρίου και ώρα 12 τα μεσάνυχτα.
-   Για να είναι έγκυρη η υποβολή σας θα πρέπει να παραδώσετε:

-   Την αναφορά σας στο eclass
-   Ένα αρχείο tar.gz το οποίο θα αντιγράψετε στον linux server σε
    συγκεκριμένο κατάλογο (οδηγίες ακολουθούν)

-   Η αναφορά σας θα πρέπει να έχει συγκεκριμένη μορφή.

-   Google doc
    template [https://docs.google.com/document/u/2/?ftv=1&tgif=d](https://www.google.com/url?q=https://docs.google.com/document/u/2/?ftv%3D1%26tgif%3Dd&sa=D&ust=1576198569051000) απαιτείται
    login με το account του Πανεπιστημίου.

-   Φροντίστε να τεκμηριώνετε τις απαντήσεις σας και η αναφορά σας να
    είναι ευανάγνωστη και δομημένη σωστά (σε κάθε μέρος ζητούνται
    συγκεκριμένα πράγματα) και να αναφέρει τα στοιχεία σας στο εξώφυλλο.
    Θα υπάρχει ποινή στον τελικό βαθμό για αναφορές που δεν τηρούν τους
    κανόνες. Σε κάθε άσκηση θα πρέπει να έχετε ενδεικτικές εκτελέσεις
    (screenshots από το terminal σας)
-   Για να είναι έγκυρη η εργασία σας θα πρέπει να ετοιμάσετε ένα
    tar.gz αρχείο το οποίο θα περιέχει τα εξής:

+--------------------------------------------------------------------------+
| it21881\_ex\_1.sh\                                                       |
| it21801\_ex\_2.sh\                                                       |
| it21801\_ex\_3.sh\                                                       |
| it21801\_ex\_4.sh                                                        |
|                                                                          |
| it21801\_ex\_5.sh\                                                       |
| it21801\_ex\_6.sh                                                        |
+--------------------------------------------------------------------------+

Η εγκυρότητα του αρχείου θα ελεγχθεί με κάποιο shell script συνεπώς αν
τα αρχεία σας δεν συμμορφώνονται με τον παραπάνω κανόνα ΔΕΝ ΘΑ ΓΙΝΟΝΤΑΙ
ΑΠΟΔΕΚΤΑ.

+--------------------------------------------------------------------------+
| Πως να δοκιμάσετε αν είναι έγκυρο το αρχείο που θα υποβάλετε:            |
|                                                                          |
| η εντολή η οποία θα χρησιμοποιηθεί για να ελέγξει τη δομή του tar.gz     |
| αρχείου θα είναι η εξής:                                                 |
|                                                                          |
| tar -tzvf it21801.tar.gz  αν το αρχείο σας είναι το it21801.tar.gz και   |
| θα πρέπει να σας εμφανίζει το αποτέλεσμα:                                |
|                                                                          |
| +----------------------------------------------------------------------- |
| ---+                                                                     |
| | -rw-r--r-- it21801/it21801             0 2019-11-10 13:41              |
|    |                                                                     |
| | it21801\_ex\_1.sh\                                                     |
|    |                                                                     |
| | -rw-r--r-- it21801/it21801             0 2019-11-10 13:41              |
|    |                                                                     |
| | it21801\_ex\_2.sh\                                                     |
|    |                                                                     |
| | -rw-r--r-- it21801/it21801             0 2019-11-10 13:41              |
|    |                                                                     |
| | it21801\_ex\_3.sh\                                                     |
|    |                                                                     |
| | -rw-r--r-- it21801/it21801             0 2019-11-10 13:41              |
|    |                                                                     |
| | it21801\_ex\_4.sh                                                      |
|    |                                                                     |
| |                                                                        |
|    |                                                                     |
| | -rw-r--r-- it21801/it21801             0 2019-11-10 13:41              |
|    |                                                                     |
| | it21801\_ex\_5.sh\                                                     |
|    |                                                                     |
| | -rw-r--r-- it21801/it21801             0 2019-11-10 13:41              |
|    |                                                                     |
| | it21801\_ex\_6.sh                                                      |
|    |                                                                     |
| +----------------------------------------------------------------------- |
| ---+                                                                     |
|                                                                          |
| Για να δημιουργήσετε το αρχείο tar.gz θα συγκεντρώσετε όλα τα αρχεία σας |
| σε έναν κατάλογο και τρέξτε την εντολή tar -cvzf it21801.tar.gz \*.sh    |
+--------------------------------------------------------------------------+

+--------------------------------------------------------------------------+
| Που θα υποβάλετε τα αρχεία σας                                           |
|                                                                          |
| Στον server με ip 10.100.51.113 θα δημιουργηθεί ένας κατάλογος           |
| /users/os/ex1 ο οποίος θα περιέχει έναν κατάλογο για καθένα από εσάς.    |
| Δηλαδή αν είστε ο χρήστης it21801 θα αντιγράψετε το αρχείο που           |
| δημιουργήσατε πιο πάνω και θα ονομάζεται it21801.tar.gz στον κατάλογο    |
| /users/os/ex1/it21801                                                    |
|                                                                          |
| Για να βεβαιωθείτε ότι το αρχείο σας έχει αντιγραφεί σε αυτόν τον        |
| κατάλογο θα τρέξετε την εντολή                                           |
|                                                                          |
|  ls - l /users/os/ex1/it21801                                            |
|                                                                          |
| +----------------------------------------------------------------------- |
| ---+                                                                     |
| | -rw-r--r-- 1 it21801 it21801 0 Nov 10 14:03                            |
|    |                                                                     |
| | /users/os/ex1/it21801/it21801.tar.gz                                   |
|    |                                                                     |
| +----------------------------------------------------------------------- |
| ---+                                                                     |
+--------------------------------------------------------------------------+

\

-   Οι διδάσκοντες θα αποφασίσουν ποιοι θα κληθούν για προφορική
    εξέταση, οι οποίοι θα ενημερωθούν μέσω του eclass. Τα κριτήρια
    επιλογής θα είναι:

-   Μη τεκμηριωμένη εργασία
-   Ελλιπής αναφορά
-   Μη ύπαρξη σχολίων/μηνυμάτων

Σε περίπτωση που παρατηρηθεί πανομοιότυπος κώδικας (αντιγραφή), η
εργασία θα μηδενιστεί αυτόματα.

-   Η εργασία θα εξεταστεί σε ημερομηνία που θα προκύψει κατόπιν
    συνεννοήσεως. Η παρούσα εργασία αποτελεί το 15% της βαθμολογίας του
    μαθήματος.
-   Για απορίες απευθυνθείτε στην περιοχή συζητήσεων του Piazza του
    μαθήματος
    [https://piazza.com/hua.gr/fall2019/12/home](https://www.google.com/url?q=https://piazza.com/hua.gr/fall2019/12/home&sa=D&ust=1576198569056000)  για
    την 1η εργασία (assignment1 tag)

Published by [Google
Drive](https://docs.google.com/ "Learn more about Google Drive")–[Report
Abuse](https://docs.google.com/u/0/abuse?id=AKkXjoyCr_hR8mwp1vR1kuMb0Ay_L89WBvtKOZqCARPPFAnhEhyIQ0axgZCzvApHAGX4NOhLAF92NhUBbuKOvtU:0)–Updated
automatically every 5 minutes