with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Main is

   --N : Integer;
begin
   Put_Line("Bienvenido a la clase 2");

   -- -- Ejemplo de for
   -- for I in 1..10 loop
   --    Put_Line(I'Image);
   -- end loop;
   -- null;

   -- --Jugando
   -- N := 10;
   -- Put_Line(N'Image);
   -- Put_Line(Integer'Succ(N)'Image); -- Te indica el numero sucesor de la variable
   -- Put_Line(Integer'Pred(N)'Image); -- Te indica el numero predecesor de la variable
   --
   -- if N mod 2 = 0 then
   --    Put_Line("Es par");
   -- end if;

   -- -- Que se liste los numeros pares del 1 al 20
   -- for I in 1..20 loop
   --    if I mod 2 = 0 then
   --       Put_Line(I'Image);
   --    end if;
   -- end loop;

   -- -- Jugando un poco con la consola
   -- Ada.Text_IO.Set_Line(4);
   -- Ada.Text_IO.Set_Col(10);
   -- Put("C");

   -- -- La sumatoria de valores entre el 1 y 15 y que la muestre
   -- declare
   --    Resultado : Integer := 0;
   -- begin
   --    Resultado := 0;
   --    for I in 1..15 loop
   --       Resultado := Resultado + I;
   --    end loop;
   --    Put_Line("La sumatoria entre el 1 y 15 es " & Resultado'Image);
   -- end;

   -- -- El promedio de 10 valores ingresados por el usuario
   declare
      Sumatoria : Integer := 0;
      Valor_ingresado : Integer := 0;
      Promedio : Float;
   begin
      -- Promedio := Float(Sumatoria); -- Hay que hacer un casteo
      Put_Line("Ingrese 10 valores");
      for I in 1..10 loop
         Get(Valor_ingresado);
         Sumatoria := Sumatoria + Valor_ingresado;
      end loop;
      Promedio := Float(Sumatoria) /10.0;
      Put("El promedio es " & Promedio'Image);
   end;


end Main;
