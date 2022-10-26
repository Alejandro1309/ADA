with Ada.Text_IO; use Ada.Text_IO;
with Ada.Numerics.Float_Random; use Ada.Numerics.Float_Random;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Float_Array; use Float_Array;

procedure Main is

begin

   --  declare
   --     -- type Montos is array (Integer range <>) of Float;
   --     type Dinero is digits 2;
   --     -- Empieza en la posición 1:
   --     type Montos is array (Positive range <>) of Dinero;
   --     -- Empieza en la posición 0:
   --     type Montos_Natural is array (Natural range <>) of Dinero;
   --     -- Empieza en la posición Integer':
   --     type Montos_Integer is array (Integer range <>) of Dinero;
   --
   --     -- Ventas : Montos(1..5);
   --     Ventas : Montos := (10.0,2.3,6.7);
   --     Ventas_Natural_Range : Montos_Natural := (4.5,3.4);
   --     Ventas_Integer_Range : Montos_Integer := (6.7,2.3);
   --  begin
   --     -- Ventas(0) := 2.3;
   --     Put_Line("Primera posición (Positive range <>) " & Ventas'First'Image);
   --     Put_Line("Primera posición (Natural range <>) " & Ventas_Natural_Range'First'Image);
   --     Put_Line("Primera posición (Integer range <>) " & Ventas_Integer_Range'First'Image);
   --  end;

   declare



      Numeros : Array_Float := Array_Numeros_Aleatorios(10);

   begin
      for i in reverse Numeros'Range loop
         Put(Numeros(i), Exp => 0);
         Put_Line("");
      end loop;
      Put_Line("La sumatoria es : ");
      Put(Sumatoria(Numeros), Exp => 0);

      Put_Line("");
      Put_Line("El promedio es : ");
      Put(Promedio(Numeros), Exp => 0);

      declare
         Mayores_A_5 : Array_Float := Mayores(Numeros,5.0);
      begin
         Put_Line("Los mayores a 5 son");
         Mostrar(Mayores_A_5);
      end;
   end;

   null;
end Main;
