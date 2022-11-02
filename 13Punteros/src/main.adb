with Ada.Text_IO; use Ada.Text_IO;
with Ada.Containers.Vectors;
with Juego; use Juego;
with IO_Enums;

procedure Main is

begin
   --  declare
   --     A : Integer;
   --     B : Integer;
   --     C : Integer;
   --  begin
   --     A := 10;
   --     B := 20;
   --     C := A;
   --     A := 40;
   --     Put_Line(C'Image);
   --  end;

   --  declare
   --     type Puntero_Integer is access Integer;
   --     --  type Puntero_Integer_2 is access Integer; -- Es incompatible con el anterior
   --     PTR_A : Puntero_Integer := null;
   --     PTR_B : Puntero_Integer := null;
   --     PTR_C : Puntero_Integer := null;
   --  begin
   --     PTR_A := new Integer'(10);
   --     PTR_B := new Integer'(20);
   --     PTR_C := PTR_A;
   --     PTR_A.All := 40;
   --     --  PTR_A := new Integer'(10); -- Genero un nuevo espacio en el heap y puerod lq
   --     --  Put_Line (PTR_A) ; -- No tenemos el image para los
   --     Put_Line(PTR_C.All'Image);
   --  end;

   -- Declara un tipo de arreglo de punteros de puntos...
   --  declare
   --     -- Declara un tipo para un registro que sea u punto (X,Y)
   --     type Punto is record
   --        X : Integer;
   --        Y : Integer;
   --     end record;
   --     -- Declara un tipo que sea un puntero(access) a un punto
   --     type Puntero_Punto is access Punto;
   --     -- Declara un tipo de arreglo de punteros de puntos...
   --     -- type Array_Puntero_Punto is array (Natural range <>) of Puntero_Punto;
   --     package Vector_Puntos is new Ada.Containers.Vectors
   --       (Index_Type => Natural,
   --        Element_Type => Puntero_Punto);
   --
   --     Mi_Punto : Puntero_Punto;
   --     -- Muchos_Puntos : Array_Puntero_Punto(0..5) := (others => null);
   --     Muchos_Puntos : Vector_Puntos.Vector;
   --
   --  begin
   --     -- Mi_Punto := new Punto'(10,20);
   --     -- Mi_Punto := new Punto'(X => 10, Y => 20);
   --     -- Instancia 5 puntos...
   --     --  for i in Muchos_Puntos'Range loop
   --     --     Muchos_Puntos(i):= new Punto'(i + 3, i + 2);
   --     --  end loop;
   --     for i in 1..10 loop
   --        Mi_Punto := new Punto'(i + 3, i + 2);
   --        Muchos_Puntos.Append(Mi_Punto);
   --     end loop;
   --
   --     --  for i in Muchos_Puntos'Range loop
   --     --     Mi_Punto := Muchos_Puntos(i);
   --     --     -- En principio con punteros para obtener un valor va el All
   --     --     --  Set_Col(Positive_Count(Mi_Punto.X));
   --     --     --  Set_Line(Positive_Count(Mi_Punto.Y));
   --     --     -- Pero en Ada en los registros me permite obciar el All
   --     --     -- Desreferenciación automática
   --     --     Set_Col(Positive_Count(Mi_Punto.X));
   --     --     Set_Line(Positive_Count(Mi_Punto.Y));
   --     --     Put_Line("*");
   --     --  end loop;
   --
   --     for Punto_Actual of Muchos_Puntos loop
   --        Set_Col(Positive_Count(Punto_Actual.X));
   --        Set_Line(Positive_Count(Punto_Actual.Y));
   --        Put_Line("*");
   --     end loop;
   --  end;

   declare
      Profesion : Profesiones;
      package Profesiones_IO is new IO_Enums(Enum_Type => Profesiones);
   begin
      Profesion := Profesiones_IO.Get_Enum;
   end;

   null;
end Main;
