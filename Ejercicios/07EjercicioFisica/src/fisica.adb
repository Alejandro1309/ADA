package body Fisica is

   function Posicion_Final(Distancia, Velocidad, Tiempo, Aceleracion) return Distancia is
      Distancia_Final : Float := 0;
   begin
      Distancia_Final := Distancia + (Velocidad * Tiempo) + 1/2 * Aceleracion + Tiempo * Tiempo;
      return 
   end;
   
end Fisica;
