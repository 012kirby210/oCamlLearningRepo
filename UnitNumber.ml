
open Graphics;;
(* https://www.youtube.com/watch?v=ovJcsL7vyrk *)
Random.self_init ();;
Graphics.open_graph " 1024x780";;

let rec iterate r x_init i =
        if i = 1 then x_init
        else
                let x = iterate r x_init (i-1) in
                r *. x *. (1.0 -. x);;

for x = 0 to 1023 do
        let r = 4.0 *. (float_of_int x) /.1024.0 in
        for i = 0 to 199 do
                let x_init = Random.float 1.0 in
                let x_final = iterate r x_init 1024 in
                let y = int_of_float (x_final *. 780.) in
                Graphics.plot x y
        done
done;;

read_line ();;
