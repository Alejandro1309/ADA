with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings; use Ada.Strings;
with Ada.Strings.Fixed; use Ada.Strings.Fixed;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

package body Fisica is
  -- ( Xf = X0 + Vinicial * t + 1/2 * a * t� )
   function Posicion_Final(Pos_init : in Distancia;
                           Vel_init : in Velocidad;
                           T : in Tiempo;
                           A : in Aceleracion) return Distancia is
   begin
      return Distancia( Float(Pos_init) + Float(Vel_init) * Float(T) + 0.5 * Float(A) * Float(T)**2);
   end Posicion_Final;
   
end Fisica;
