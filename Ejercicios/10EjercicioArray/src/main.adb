with Ada.Text_IO; use Ada.Text_IO;
with Personas; use Personas;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

procedure Main is
   type Persona is record
      Nombre : Unbounded_String;
      Apellido : Unbounded_String;
      Edad : Integer range 1..150;
   end record;

   type Array_Personas is array(Positive range <>) of Persona;

begin
   Put_Line("Ingrese el numero de personas que quiera introducir");
   declare
      Numero_Personas : Integer:= Get_Integer;
      Persona_Ingresar : Array_Personas(1..Numero_Personas);
   begin
      for i in Numero_Personas loop
         Put_Line("Ingrese su nombre");
         declare
            Persona_Ingresar.Nombre := Get_NopEmpty_Line;
         begin
            null;
         end;

         Put_Line("Ingrese su Apellido");
         declare
            Persona_Ingresar.Apellido := Get_NopEmpty_Line;
         begin
            null;
         end;

         Put_Line("Ingrese su edad");
         declare
            Persona_Ingresar.Edad := Get_Integer;
         begin
            null;
         end;
      end loop;
   end;


end Main;
