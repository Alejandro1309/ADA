with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

package Movil is

   
   type Posicion_X is new Integer;
   type Posicion_Y is new Integer;
   type Velocidad_X is new Integer;
   type Velocidad_Y is new Integer;
   
   type Clase_Coche is tagged private;
   
   type Coche is access Clase_Coche;
   
   -- Constructor
   function Create(Posicion_X : Integer) return Coche;
   
   function To_String(this : Clase_Coche) return String;
   
private
   
   type Clase_Coche is tagged record
      PosicionX : Posicion_X;
      PosicionY : Posicion_Y;
      VelocidadX : Velocidad_X;
      VelocidadY : Velocidad_Y;
   end record;

end Movil;
