type date = {day:int;month:int;year:int };;
type employe = {nom:string; salaire:float;dateEntree:date};;
let morePaid e1 e2 = if e1.salaire < e2.salaire then e2 else e1;;

let yearSorted y1 y2 = if y1.year < y2.year then (y1,y2) else
  if y1.year > y2.year then (y2,y1) else
  if y1.month < y2.month then (y1,y2) else
  if y1.month > y2.month then (y2,y1) else
  if y1.day < y2.day then (y1,y2) else
    (y2,y1);;

let abs a = if a < 0 then (0-a) else a;;
let bissextile annee = (annee mod 400) = 0 || ((annee mod 4) = 0 && (annee mod 100) <> 0 );;
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

let employe1={nom="Eric";salaire=1234.0;dateEntree={day=1;month=1;year=1998}};;
let employe2={nom="Cedric";salaire=1432.0;dateEntree={day=2;month=2;year=1996}};;

print_endline ("The more paid is : " ^ (morePaid employe1 employe2).nom);;
print_endline ("The difference between their entry date is : " ^ (
    let (diffDay,diffMonth,diffYear) = differenceDate employe1.dateEntree employe2.dateEntree in
    (string_of_int (diffDay))^" days, "^(string_of_int(diffMonth))^" months,"^(string_of_int(diffYear)^" years")));;
