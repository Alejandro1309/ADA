with Ada.Text_IO; use Ada.Text_IO;
with Ada.Numerics.Float_Random; use Ada.Numerics.Float_Random;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

procedure Main is

   --  type Indice_Diez_Numeros is range 1..10;
   --  type Diez_Arreglo_Numeros is array (Indice_Diez_Numeros) of Integer;
   -- type Diez_Numeros is array 1..10 of Integer;
   -- Diez_Numeros : Diez_Arreglo_Numeros;
   G : Generator;

begin
   --  -- Cargo el arreglo de 10 numeros
   --  for i in Indice_Diez_Numeros loop
   --     -- Diez_Numeros(i) := Integer(i);
   --     Diez_Numeros(i) := Integer(Random(G) * Float(Integer'Last));
   --  end loop;

   -- Diez_Numeros := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);

   --  for i in Diez_Arreglo_Numeros'First..Diez_Arreglo_Numeros'Last loop
   --     Put_Line(Diez_Numeros(i)'Image);
   --  end loop;

   --  declare
   --     function "+"(Value: in String) return Unbounded_String renames To_Unbounded_String;
   --     type Dia is (Lunes, Martes, Miercoles, Jueves, Viernes, Sabado, Domingo);
   --     --  Dia_En_Ingles : array (Dia) of Unbounded_String := (To_Unbounded_String("Mondey"),
   --     --                                            To_Unbounded_String("Tuesday"),
   --     --                                            To_Unbounded_String("Wednesday"),
   --     --                                            To_Unbounded_String("Thursday"),
   --     --                                            To_Unbounded_String("Fryday"),
   --     --                                            To_Unbounded_String("Saturday"),
   --     --                                            To_Unbounded_String("Sunday"));
   --
   --     Dia_En_Ingles : array (Dia) of Unbounded_String := (+("Mondey"),
   --                                               +("Tuesday"),
   --                                               +("Wednesday"),
   --                                               +("Thursday"),
   --                                               +("Fryday"),
   --                                               +("Saturday"),
   --                                               +("Sunday"));
   --     -- Un_Dia : Dia;
   --  begin
   --     --  Un_Dia := Miercoles;
   --     --  Put_Line(To_String(Dia_En_Ingles(Un_Dia)));
   --     for Un_Dia in Dia_En_Ingles'Range loop
   --        Put_Line(To_String(Dia_En_Ingles(Un_Dia)));
   --     end loop;
   --
   --  end;

   --  declare
   --     -- Declarar un tipo para un arreglo de 5 numeros
   --     -- Declarar una funcion que devuelve en un arreglo del tipo anterior cargado
   --     -- Con numeros al azar
   --     type Indice_Cinco_Numeros is range 1..5;
   --     type Array_Cinco_Numeros is array (Indice_Cinco_Numeros) of Natural;
   --
   --     function Array_Cinco_Numeros_Al_Azar return Array_Cinco_Numeros is
   --        G: Generator;
   --        Result : Array_Cinco_Numeros;
   --     begin
   --        for i in Indice_Cinco_Numeros loop
   --           Result(i) := Natural(Random(G) * Float(Natural'Last));
   --        end loop;
   --        return Result;
   --     end;
   --     Cinco_Al_Azar : Array_Cinco_Numeros := Array_Cinco_Numeros_Al_Azar;
   --  begin
   --     for i in Cinco_Al_Azar'Range loop
   --        Put_Line(Cinco_Al_Azar(i)'Image);
   --     end loop;
   --
   --  end;

   --  declare
   --     --  type Array_Cinco_Numeros is array (1..5) of Positive;
   --     --  type Array_Siete_Numeros is array (1..7) of Positive;
   --     --  type Array_Diez_Numeros is array (1..10) of Positive;
   --     --  Lo remplazamos por...
   --     type Array_Numeros is array (Integer range <>) of Positive;
   --     Diez_Numeros : Array_Numeros(1..10);
   --  begin
   --     -- Diez_Numeros := (1,2,3,4,5,6,7,8,9,10);
   --     Diez_Numeros := (1 => 3, 5 => 5, 7 => 7, others => 100);
   --     Put_Line("El Array tiene " & Diez_Numeros'Length'Image & " elementos");
   --     for i in Diez_Numeros'Range loop
   --        Put_Line(Diez_Numeros(i)'Image);
   --     end loop;
   --
   --  end;

   declare
      -- Declarar un tipo que sea un arreglo de numeros
      type Array_Numeros is array (Integer range <>) of Integer;
      -- Declarar una funcion que reciba un arreglo de numeros y devuelva el maximo
      function Maximo_En_Array (Array_N : Array_Numeros) return Integer is
         Maximo : Integer := 0;
      begin
         for i in Array_N'Range loop
            if (Array_N(i) > Maximo) then
               Maximo := Array_N(i);
            end if;
         end loop;
         return Maximo;
      end;

      Longitud_Ingresada : Integer;

   begin
      Put_Line("Cuantos elementos desea ingresar?");
      Longitud_Ingresada := Integer'Value(Get_Line);
      declare
         Numeros : Array_Numeros(1..Longitud_Ingresada);
      begin
         for i in Numeros'Range loop
            Put_Line("Ingrese el numero" & i'Image);
            Numeros(i) := Integer'Value (Get_Line);
         end loop;

         Put_Line("El maximo es" & Maximo_En_Array(Numeros)'Image);
      end;

   end;


end Main;
