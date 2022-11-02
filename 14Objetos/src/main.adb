with Personaje; use Personaje;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

procedure Main is
   Khazix : Campeon;
begin
   -- Khazix := new Clase_Campeon;
   -- Khazix.Nombre := To_Unbounded_String("Khazix");
   Khazix := Create("Khazix");
   -- Khazix.Nivel := 5; -- Estaría mal, no respeta el encapsulamiento
   -- Khazix.Experiencia := 2000;
   Put_Line(Khazix.To_String);
   Put_Line("Probando los getters");
   Put_Line("Nombre: " & Khazix.Get_Nombre);
   Put_Line("Nivel: " & Khazix.Get_Nivel'Image);
end Main;
