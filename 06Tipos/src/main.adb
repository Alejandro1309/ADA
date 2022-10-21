with Ada.Text_IO; use Ada.Text_IO;
with Geometria; use Geometria;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Main is
   --  -- type Cantidad is new Integer;
   --  -- type Cantidad is new Natural;
   --  -- type Cantidad is range 0..300;
   --  -- type Cantidad is range 0..Integer'Last;
   --  -- type Cantidad is range 0..2**63-1; -- Uso 64 bits
   --  type Cantidad is range 0..2**127-1; -- Uso 128 bits
   --
   --  --  type Cantidad_Peras is new Integer; -- Esto no funciona
   --  --  type Cantidad_Manzanas is new Integer; -- Esto no funciona
   --  subtype Cantidad_Peras is Cantidad;
   --  subtype Cantidad_Manzanas is Cantidad;
   --
   --  Peras : Cantidad_Peras;
   --  Manzanas : Cantidad_Manzanas;
   --  Frutas : Cantidad;
   --  -- Total : Integer;
begin
   --  Peras := 2;
   --  Manzanas := 4;
   --  -- Peras := Manzanas; -- En cualquier lenguaje esto es una asignaci�n v�lida, pero ADA no
   --  Frutas := Peras + Manzanas; -- Esta es una asignaci�n v�lida y sem�nticamente correcta
   --  -- Total := Peras + Manzanas; -- Esta no es una asignaci�n v�lida
   --  Put_Line("En total tengo" & Frutas'Image & " frutas");
   --
   --  Frutas := 300;
   --  Frutas := Frutas + 50; -- Falla en tiempo de ejecuci�n si --type Cantidad is range 0..300;
   --  Frutas := 3 ** 3; -- Operador exponente
   --  Put_Line("Ahora en total tengo" & Frutas'Image & " frutas");

   --  declare
   --     type Mi_Tipo is new Integer;
   --     Variable : Mi_Tipo;
   --  begin
   --     Variable := 3;
   --  end;

   --  declare
   --     type Distancia is new Float;
   --     type Area is new Float;
   --     Base : Distancia;
   --     Altura : Distancia;
   --     Superficie : Area;
   --
   --     procedure Procedure_En_Declare is
   --     begin
   --        null;
   --     end;
   --
   --     function "*" (Left : Distancia; Right : Distancia) return Area is
   --     begin
   --        return Area(Float(Left) * Float(Right));
   --     end;
   --
   --
   --  begin
   --     Base := 10.0;
   --     Altura := 30.0;
   --     -- Superficie := Base * Altura; -- Asignaci�n no compatible salvo que subtype Area is Distancia;
   --     -- Superficie := Area(Base * Altura);
   --     Superficie := Base * Altura; -- Ahora es v�lida despu�s de declarar la funci�n "*"
   --  end;

   --  -- Ejemplo utilizando paquete
   --  declare
   --     Base : Distancia := 10.0;
   --     Altura : Distancia := 5.0;
   --     Area_Triangulo : Area;
   --  begin
   --     Area_Triangulo := (Base * Altura) / 2.0;
   --  end;

   --  -- Enumerados en ADA
   --  declare
   --     type Dias is (Lunes, Martes, Miercoles, Jueves, Viernes, Sabado, Domingo);
   --     type Meses is (Enero, Febrero, Marzo, Abril, Mayo, Junio, Julio, Agosto, Septiembre, Octubre, Noviembre, Diciembre);
   --     Primer_Dia_Semana : Dias;
   --  begin
   --     Primer_Dia_Semana := Lunes;
   --     for Dia in Dias loop
   --        Put_Line("Hoy es " & Dia'Image);
   --        case Dia is
   --           when Lunes =>
   --              Put_Line("Feliz comienzo de Semana");
   --           when Sabado..Domingo =>
   --              Put_Line("Feliz fin de semana");
   --           when Martes..Jueves =>
   --              Put_Line("A tope en la semana");
   --           when Viernes =>
   --              Put_Line("Tu cuerpo lo sabe");
   --        end case;
   --     end loop;
   --  end;

   --  -- Tipos de datos modulares
   --  declare
   --     type Max_1000 is mod 1000; -- Va de 0 a 1000
   --     Numero : Max_1000;
   --  begin
   --     Numero := 500;
   --     Put_Line("Vale" & Numero'Image);
   --     Numero := Numero + 400;
   --     Put_Line("Ahora vale" & Numero'Image);
   --     Numero := Numero + 102;
   --     Put_Line("Ahora vale" & Numero'Image);
   --  end;

   -- Tipos de datos flotantes
   declare
      type Dinero is digits 2;
      Riqueza : Dinero;
   begin
      Riqueza := 100.223332;
      Put(Float(Riqueza),Aft => Dinero'Digits, Exp => 0);
   end;

   null;
end Main;
