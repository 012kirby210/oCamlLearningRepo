print_endline "Exercice 1";;
let rec sommeN n =
  if n<=0 then 0 else n+ sommeN(n-1);;

print_endline "appel sommeN(0)";;
print_endline (string_of_int( sommeN 0));;
print_endline "déroulement des appels :";;
print_endline "sommeN(0) = if 0<=0 then 0 else 0 + sommeN(0-1)";;
print_endline "= 0";;
print_endline "appel sommeN(-1)";;
print_endline (string_of_int (sommeN(-1)));;
print_endline "déroulement des appels :";;
print_endline "sommeN(-1) = if -1<=0 then 0 else -1 + sommeN(-1-1)";;
print_endline "= 0";;
print_endline "appel sommeN(1)";;
print_endline (string_of_int (sommeN(1)));;
print_endline "déroulement des appels :";;
print_endline "sommeN(1) = if 1<=0 then 0 else 1 + sommeN(1-1)";;
print_endline "= 1 + sommeN(0)";;
print_endline "= 1 + (if 0<=0 then 0 else 0 + sommeN(0-1))";;
print_endline "= 1 + 0 = 1";;
print_endline "appel sommeN(3)";;
print_endline (string_of_int (sommeN(3)));;
print_endline "déroulement des appels :";;
print_endline "sommeN(3) = if 3<=0 then 0 else 3 + sommeN(3-1)";;
print_endline "= 3 + sommeN(2)";;
print_endline "= 3 + (if 2<=0 then 0 else 2 + sommeN(2-1))";;
print_endline "= 3 + ( 2 + sommeN(1))";;
print_endline "= 3 + ( 2 + (if 1<=0 then 0 else 1 + sommeN(1-1))";;
print_endline "= 3 + ( 2 + (1 + sommeN(0))";;
print_endline "= 3 + ( 2 + (1 + (if 0<=0 then 0 else 0 + sommeN(0-1)))";;
print_endline "= 3 + ( 2 + (1 + (0)))";;
print_endline "= 6";;
print_endline "Quelque soit n entier négatif ou nul sommeN(n) vaut 0.";;
print_endline "Soit n entier positif tel quelque soit m entier <= n : sommeN(m) <- if m <= 0 then 0 else m + sommeN(m-1)";;
print_endline "En construisant les entiers en se servant de la théorie des groupes Lagrangiens et y adjoignant la notion de parité de sorte de scinder le groupe des entiers en deux sous-groupes distincts (au sens de Cantor) : 1 devient la plus petite différence entre deux éléments au sens de la norme alors : ";;
print_endline "Soit m = n + 1";;
print_endline "sommeN(m) = sommeN(n+1) = n+1 + sommeN(n) si m >= 0 c.a.d si n >= -1 , par définition de la récurrence";;
print_endline "La fonction termine dans tous les cas en vertu de la convergence du paramètre de récurrence vers le cas de base.";;
print_endline "";
print_endline "Exercice 2 : ";
print_endline "let rec fact n = ";;
print_endline " if n=1 then 1 else n*fact (n-1);;";;
print_endline "Pour les cas où n<1, la fonction ne s'arrête pas.";;
print_endline "let rec fact n = if n<=1 then 1 else n*fact (n-1);;";;
print_endline "let rec fact n =";;
print_endline " if n<=1 then  1 else n*fact (n+1);;";;
print_endline "Pour tout paramètre n positif, la fonction ne termine pas";;
print_endline "let rec fact n = if n<=1 then 1 else n*fact (n-1);;";;
print_endline "let rec f n = f (n-1);; est une récursion infinie.";;
print_endline "let rec g n = if n<=0 then g (n-1) else g (n+1);; Il n'y a pas de cas de base";;
print_endline "";
print_endline "Exercice 3 : ";
print_endline "x^b : pour x != 0 si b=0 => x^b = 1";;
print_endline "        pour x > 0 si b>0 => x^b = x*x^(b-1)";;
print_endline "        pour x > 0 si b<0 => x^b = 1/x*x^(b+1)";;
print_endline "        pour x < 0 si b>0 => x^b = -x*x^(b-1)";;
print_endline "        pour x < 0 si b<0 => x^b = -1/x*x^(b+1)";;
print_endline "        pour x = 0 si b>=0 => x^b = 1;;";;
print_endline "        pour x = 0 si b<0 => raise exception";;
print_endline "Pour les flottants : ";;
print_endline "let rec exp a b = let positifOuNul x = x>=0 in";;
print_endline " match (positifOuNul b) with";;
print_endline " true -> (if b = 0 then 1. else a*.(exp a (b-1)))";;
print_endline " _ -> (if a = 0. then raise Division_by_zero else 1./.a *. (exp a (b+1)));;";;
print_endline "Quelque soit la valeur de b, paramètre récursif, b tend vers le cas de base b=0 qui renvoie 1.";;
let rec exp a b = let positifOuNul x = x>=0 in
  match (positifOuNul b) with
    true -> (
      if b=0 then 1.
      else a*.(exp a (b-1)))
    |_-> (
      if a =0. then raise Division_by_zero
      else 1./.a *. (exp a (b+1))
    );;

print_endline "";;
print_endline "Exercice 4 : ";;
let lettre c = ('a' <= c && 'z' >= c) || ('A' <= c && 'Z'  >= c);;
let rec motI (s,i) =
  if i<=0 then true
  else ( lettre (s.[i])) && motI (s,(i-1));;
print_endline "motI (\"abcd456\",3) = lettre (s.[3]) && motI(\"abcd456\",2)";;
print_endline " = lettre ('d') && (lettre(s.[2]) && motI(\"abcd456\",1))";;
print_endline " = true && ( lettre ('c') && (lettre(s.[1]) && motI (\"abcd456\",0)))";;
print_endline " = true && true && (lettre ('b') && true)";;
print_endline " = true && true && true && true";;
print_endline " = true && true && true";;
print_endline " = true && true";;
print_endline " = true";;
print_endline " --";;
print_endline "motI (\"abcd456\",5) = lettre (s.[5]) && motI(\"abcd456\",4)";;
print_endline " = lettre ('5') && (lettre(s.[4]) && motI(\"abcd456\",3))";;
print_endline " = false && ( lettre ('4') && (lettre(s.[3]) && motI (\"abcd456\",2)))";;
print_endline " = false";;
print_endline "La fonction regarde si les i caractères après le premier caractère d'une chaîne sont des lettres";;
print_endline "let isWord = ";;
let isWord w = let isLetter a = (a<='z' && a>='a') || (a<='Z' && a>='A') in
  let l = String.length w in
  let rec checkWord w i = if i <0 then true
    else (isLetter (w.[i]) && (checkWord w (i-1))) in
  checkWord w (l-1);;

print_endline "let isWord w = let isLetter a = (a<='z' && a>='a') || (a<='Z' && a>='A') in";;
print_endline "let l = String.length w in";
print_endline "let rec checkWord w i = if i <0 then true";
print_endline "else (isLetter (w.[i]) && (checkWord w (i-1))) in";
print_endline "checkWord w (l-1);;";;
let est_mot s =
  let est_lettre c = ('a' <= c && 'z' >= c) || ('A' <= c && 'Z' >= c) in
  let rec parcours i = (((String.length s) = i) || ( (est_lettre s.[i]) && (parcours (i+1)))) in
  parcours 0;;
print_endline "En utilisant les opérations logiques : ";;
print_endline "let est_mot s =";;
print_endline "let est_lettre c = ('a' <= c && 'z' >= c) || ('A' <= c && 'Z' >= c) in";;
print_endline "let rec parcours i = (((String.length s) = i) || ( (est_lettre s.[i]) && (parcours (i+1)))) in";;
print_endline "parcours 0;;";;
print_endline "fonction à utiliser pour faire la stack trace (pour éviter le unbound)";;
print_endline "let rec parcours s i = if i >= String.length s then true else ";;
print_endline "( ( lettre s.[i] ) && ( parcours s (i+1)) );;";;
let lettre c = ('a' <= c && 'z' >= c) && ('A' <= c && 'Z' >= c);;
let rec parcours s i = if String.length s = i then true else
    ((lettre s.[i]) && (parcours s (i+1)));;
print_endline "Question 2 : ";
print_endline "";;
(* Méthode naîve*)
exception Not_an_integer_exception;;
exception Out_of_functionnal_domain;;
let isCharChiffre c = ('0' <= c && '9' >= c);;
let rec exp a b = if b>=0 then
    (match b
     with 0 -> 1
        |_-> a * exp a (b-1))
  else ( raise Out_of_functionnal_domain);;

let isStringChiffre s =
  let rec parcours i =
    (String.length s = i) || (isCharChiffre s.[i]) && parcours (i+1) in
  parcours 0;;
let char_to_int c = if ( c<= '9' && c >= '0') then ((int_of_char c) - (int_of_char '0' ))
  else raise Out_of_functionnal_domain;;
let string_to_int s =
  match (isStringChiffre s)
  with false -> raise Not_an_integer_exception
     |_-> let l = String.length s in
       let rec parcours i =
            if l = i then 0
            else (
              ( (char_to_int s.[i]) * (exp 10 (l-1-i)) )
              +
              parcours (i+1)
            ) in
       parcours 0;;

print_endline "regarder le code source ";;

(* Méthode un peu moins naîve*)
(* Avec les deux exceptions précèdemment instruites *)
let char_to_int c = let char_val = ((int_of_char c) - (int_of_char '0')) in
  if (char_val >= 0  && char_val <= 9) then char_val else raise Not_an_integer_exception;;
let rec exp a b = if b >= 0 then (match b with
      0 -> 1
    |_-> a * exp a (b-1))
  else raise Out_of_functionnal_domain;;
let string_to_int s =
  let l = String.length s in
  let rec parcours i =
    if i = l then
      0
    else
      ( char_to_int s.[i] ) * exp 10 (l-1-i) + parcours (i+1)
  in parcours 0;;

print_endline "Question 3 : ";;
print_endline "regarder le code pour la fonction générique testChaine."
let testChaine s f = let l = String.length s in
  let rec parcours i =
    i = l || ( (f s.[i]) && parcours (i+1)) in
  parcours 0;;

let est_mot s = let est_lettre c = ('a' <= c && 'z' >= c) || ('A' <= c && 'Z' >= c) in
  testChaine s est_lettre;;

(* est Nombre *)
let est_nombre s = let est_chiffre c = '0' <= c && c <= '9' in
  testChaine s est_chiffre;;

print_endline "Exercice 6";;
let voyelle c = match c with
  'a'|'e'|'i'|'o'|'u' -> true
     |_->false;;
print_endline "La fonction voyelle détermine si un charactère est une voyelle."
let opArith c = match c
  with '+'|'-'|'*'|'/' -> true
     | _-> false;;
print_endline "La fonction qui test si un charactère est un opérateur arithmétique est inexacte : ";;
print_endline "il y a une erreur de syntaxe le ;; devrait arriver à la fin du match case. De plus, le _ case match tous les cas donc quoiqu'il arrive la fonction renvoit faux";;
exception Not_a_valid_triple;;
let sommeTriple a = match a
  with (x,y,z) -> x+y+z
     |_-> raise Not_a_valid_triple;;
print_endline "En supposant que l'auteur de la fonction sommeTriple est de calculer la somme de 3 entiers passés en paramètre de la fonction, il est nettement plus simple de le spécifier directement dans les arguments de cette dernière et de laisser le compilateur et le runtime gérer les formes. : ";;
print_endline "let sommeTriple (a,b,c) = a+b+c;;";;
print_endline "Afin de rendre le pattern matching plus exhaustif sur le dernier exemple autant normaliser directement l'attente : ";;
let reponse r = let normalizedString oui_non = String.uppercase_ascii oui_non in
  match (normalizedString r) with "OUI" -> true
                              |_->false;;

print_endline "Exercice 7 : ";;
type date = {day:int;month:int;year:int };;
exception Not_a_valid_month_number;;
let aujourdhui = {day = 4; month=10;year=2020};;
let bissextile annee = (annee mod 400) = 0 || ((annee mod 4) = 0 && (annee mod 100) <> 0 );;
let joursMois annee = if (bissextile annee) then 366 else 365;;
let lendemain jour = let numOfDays m y = (match m with
    |1|3|5|7|8|10|12 -> 31
    |4|6|9|11 -> 30
    |2-> if bissextile y then 29 else 28
    |_-> raise Not_a_valid_month_number) in
  let jour_lendemain = (jour.day + 1) mod (numOfDays jour.month jour.year) in
  if jour_lendemain = 1 then
    let mois_lendemain = (jour.month + 1) mod 12 in
    if mois_lendemain = 1 then
      let annee_lendemain = jour.year + 1 in
      {day=1;month=1;year=annee_lendemain}
    else
      let mois_lendemain_formatted = if mois_lendemain = 0 then 12 else mois_lendemain in
      {day=1;month=mois_lendemain_formatted;year=jour.year}
  else
    let jour_lendemain_formatted = if jour_lendemain = 0 then (numOfDays jour.month jour.year) else jour_lendemain in
    {day=jour_lendemain_formatted;month=jour.month;year=jour.year};;
print_endline ("Exercice 8 :")
(* avec le type date précédent *)
exception Type_not_found;;
type date = {day:int;month:int;year:int };;
type employe = {nom:string; salaire:float;dateEntree:date};;
let morePaid e1 e2 = if e1.salaire < e2.salaire then e2 else e1;;
(*let anciennete e t = match t with
  | 'mois' -> Unix.gmtime (Unix)
  | 'annee'-> ()
  |_-> raise Type_not_found;;
*)
let yearSorted y1 y2 = if y1.year < y2.year then (y1,y2) else
  if y1.year > y2.year then (y2,y1) else
  if y1.month < y2.month then (y1,y2) else
  if y1.month > y2.month then (y2,y1) else
  if y1.day < y2.day then (y1,y2) else
    (y2,y1);;

(* Sur la différence des années :
   date2 > date1
   si date2.jour < date1.jour => retenue -1 mois.
   si date2.mois < date1.mois => retenue -1 an.

*)

let abs a = if a < 0 then (0-a) else a;;
(* give the number of days of the month of the date passed as an argument *)
let numberOfDaysForTheMonth d = let y = d.year in
  let m = d.month in
  match m with
    1|3|5|7|8|10|12 -> 31
  |2 -> if (bissextile y) then 29 else 28
  |_-> 30;;

let differenceDate y1 y2 =
  let (olderDate,newerDate) = yearSorted y1 y2 in
  let   carryMonth = if newerDate.day <olderDate.day then 1 else 0 in
  let carryYear = if newerDate.month<olderDate.month then 1 else 0 in
  let olderDateMonthDayNumber = numberOfDaysForTheMonth olderDate in
  ( (newerDate.day - olderDate.day+olderDateMonthDayNumber) mod olderDateMonthDayNumber,
    ((newerDate.month - olderDate.month +12) mod 12) - carryMonth,
    abs (y1.year - y2.year) - carryYear);;
