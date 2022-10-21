with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Main is

   function Sumar (N1 : Integer; N2 : Integer) return Integer is

   begin
      return N1 + N2;
   end;

   function Exponente (Base : Integer; Exp : Integer := 2) return Float is
      Resultado : Float;
   begin
      if(exp = 0) then
         return 1.0;
      end if;
      if(exp = 1) then
         return Float(Base);
      end if;

      Resultado := Float(Base);
      For I in 2..Exp loop
         Resultado := Resultado * Float(Base);
      end loop;

      if(Exp < 0) then
         return 1.0 / Resultado;
      end if;

      return Resultado;
   end Exponente;

   procedure Show_Float(Value:Float) is

   begin
      Put(Value, Exp => 0, Fore => 0);
      Put_Line("");
   end Show_Float;

   procedure Put_Line(Value:Float) renames Show_Float; -- Ada permite renombrar metodos

   procedure Swap_Integers (Param1 : in out Integer; Param2 : in out Integer) is
      Aux : Integer;
   begin
      Aux := Param1;
      Param1 := Param2;
      Param2 := Aux;
   end Swap_Integers;

   function Resta (Izquierda:in Integer; Derecha:in Integer; Negativo:out Boolean) return Integer is
      Resultado : Integer;
   begin
      Resultado := Izquierda - Derecha;
      Negativo := (Resultado < 0);
      return Resultado;
   end;

   function Resta (Izquierda:in Integer; Derecha:in Integer) return Integer is
      Resultado : Integer;
   begin
      return Izquierda - Derecha;
   end;

   procedure Mayor_Menor(Valor1 : in Integer; Valor2 : in Integer; Mayor : out Integer; Menor : out Integer) is
   begin
      Mayor := (if(Valor1 > Valor2) then Valor1 else Valor2);
      Menor := (if(Valor1 < Valor2) then Valor1 else Valor2);
   end Mayor_Menor;

   --  Primer_valor : Integer;
   --  Segundo_valor : Integer;
   --  Resultado : Integer;

begin
   -- -- Invocando una funcion
   --  Primer_valor := 6;
   --  Segundo_valor := 9;
   --  Resultado := Sumar(Primer_valor, Segundo_valor);
   --  Put_Line("El resultado de sumar" &
   --             Primer_valor'Image & " y" &
   --             Segundo_valor'Image & " es" & Resultado'Image);

   -- -- Invocando una funcion con parametros con nombre(named parameters), da igual el orden en el que pongas
   --  Primer_valor := 6;
   --  Segundo_valor := 9;
   --  Resultado := Sumar(N1 => Primer_valor,
   --                     N2 => Segundo_valor);
   --  Put_Line("El resultado de sumar" &
   --             Primer_valor'Image & " y" &
   --             Segundo_valor'Image & " es" & Resultado'Image);

   --  declare
   --     Res : Float;
   --  begin
   --     -- -- Con el parametro por defecto
   --     Res := Exponente(2);
   --     -- Put(Res, Exp => 0);
   --     -- Put_Line("");
   --     -- Show_Float(Res);
   --     Put_Line(Res);
   --     -- -- Sin el parametro por defecto
   --     Res := Exponente(2,3);
   --     -- Put(Res, Exp => 0);
   --     -- Put_Line("");
   --     -- Show_Float(Res);
   --     Put_Line(Res);
   --  end;

   --  declare
   --     A : Integer := 10;
   --     B : Integer := 20;
   --  begin
   --     -- Swap_Integers(2,3); -- No funciona, in out requiere una variable si o si
   --     Put_Line("Antes " & A'Image & " " & B'Image);
   --     Swap_Integers(A,B);
   --     Put_Line("Despues " & A'Image & " " & B'Image);
   --  end;

   --  declare
   --     A : Integer := 10;
   --     B : Integer := 20;
   --     Resultado : Integer;
   --     Es_Negativo : Boolean;
   --  begin
   --     -- Resta
   --     Put_Line(Resta(40,30)'Image);
   --     -- Invoco la sobrecarga
   --     Resultado := Resta(A,B,Es_Negativo);
   --     Put_Line("Resultado " & Resultado'Image &
   --              (if(Es_Negativo) then " es negativo" else " es positivo"));
   --  end;

   -- -- Ejercicio
   -- -- Realizar el procedimiento Mayor menor
   -- -- Que reciba dos numeros y devuelva dos variables una con el mayor y otra con el menor
   -- -- Este subprograma tiene 4 parametros
   declare
      Supuesto_mayor : Integer := 9;
      Supuesto_menor : Integer := 19;
   begin
      Mayor_Menor(Supuesto_menor, Supuesto_mayor,
                  Mayor => Supuesto_mayor,
                  Menor => Supuesto_menor);
      Put_Line("Mayor " & Supuesto_mayor'Image);
      Put_Line("Menor " & Supuesto_menor'Image);
   end;

   null;
end Main;
