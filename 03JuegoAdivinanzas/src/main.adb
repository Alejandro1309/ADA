with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Float_Text_IO; with Ada.Float_Text_IO;
with Ada.Numerics.Float_Random; use Ada.Numerics.Float_Random;


procedure Main is
   G : Generator;
   Numeros_Al_Azar : Integer;
   Num_intro : Integer;
   Contador : Integer := 0;
begin
   Reset(G);
   --  La computadora determina un numero al azar entre el 1 y 100
   --  La computadora da 5 oportunidades al usuario para adivinan dicho numero
   --  El usuario arreiesga un numero y la computadora dice si dicho numero es mayor o menor al numero secreto
   --  Si adivina antes de las 5 oportunidades gana
   --  Si no logra adivinar pierde
   Numeros_Al_Azar := Integer((Random(G) * 99.0) + 1.0);

   loop
      Put_Line("Introduzca un valor: ");
      Get(Num_intro);
      if (Num_intro > Numeros_Al_Azar) then
         Put_Line("El numero que has introducido es mayor");
      elsif ( Num_intro < Numeros_Al_Azar) then
         Put_Line("El numero que has introducido es menor");
      elsif ( Num_intro = Numeros_Al_Azar) then
         Put_Line("Enhorabuena has acertado");
         exit when (Num_intro = Numeros_Al_Azar);
      end if;

      Contador := Contador + 1;
      exit when (Contador = 5);
   end loop;
   if (Contador = 5) then
      Put_Line("Has perdido. El numero es: " & Numeros_Al_Azar'Image);

   end if;


   null;
end Main;
