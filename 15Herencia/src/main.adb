with Selva; use Selva;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with IO; use IO;
with Ada.Numerics.Float_Random; use Ada.Numerics.Float_Random;

procedure Main is
   -- Leon : Animal;
   Un_Animal : Animal;

   -- Declaro un vector de animales
   Num_Animales : Integer;
   type Array_Animales is array (Positive range <>) of Animal;

begin
   -- Leon := Create("Mufasa");

   -- Elijo uno u otro
   --- Leon := new Clase_Leon;
   --- Leon := new Clase_Jirafa;

   -- Ahora uso los constructores (Elegir uno)
   -- Un_Animal := Create_Leon("Alex");
   -- Un_Animal := Create_Jirafa("Mellman");
   -- Put_Line("Hola soy " & Un_Animal.Get_Nombre) ;
   -- Un_Animal.Hablar;

   -- Pregunte al usuario cuantos animales quiere e inicialice un arreglo de animales
   -- Agregar el bloque declare
   Put_Line("¿Cuántos animales quieres introducir?");
   Num_Animales := Get_Integer;
   declare
      Animales : Array_Animales(1..Num_Animales) := (others => null);
      G : Generator;
      Azar : Uniformly_Distributed;
      Un_Animal : Animal;
   begin
      Reset(G);
      for i in Animales'Range loop
         -- Determinar un numero al azar
         --Put_Line("Introduzca el animal " & i'Image);
         Azar := Random(G);
         -- Si el numero es < 0.3 que agrege un Leon
         -- Si es mayor a 0.7 que agrege una Jirafa
         -- Sino que agrege a su animal de preferencia
         if Azar< 0.3 then
            Animales(i):=Create_Leon("Mufasa");
         elsif Azar> 0.7 then
            Animales(i):=Create_Jirafa("Jiraf");
         else
            Animales(i):=Create_Puma("Puma");
         end if;
      end loop;

      Put_Line("Los ruidos de la selva...");
      -- Recorrer el array de animales con un for of
      -- Hacer que cada animal hable
      for Criatura of Animales loop
         Criatura.Hablar;
      end loop;

   end;
end Main;
