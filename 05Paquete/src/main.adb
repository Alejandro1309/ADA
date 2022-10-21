with constantes;
with IO; use IO;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Main is

begin
   Put_Line(constantes.Titulo);
   Put_Line("Version " & constantes.Version'Image);
   New_Line(2);
   Put_Line("Ingrese su nombre");
   declare
      Nombre : String := Get_NopEmpty_Line;
   begin
      Put_Line("Hola " & Nombre);
   end;

   Put_Line("Ingrese su edad");
   declare
      Edad : Integer := Get_Integer;
   begin
      --  if(Try_Get_Integer(Edad)) then
      --     Put_Line("Edad " & Edad'Image);
      --  else
      --     Put_Line("No ingresaste numero");
      --  end if;
      Put_Line("Edad " & Edad'Image);
   end;

   null;
end Main;

