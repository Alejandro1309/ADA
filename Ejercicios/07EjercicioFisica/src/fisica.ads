package Fisica is

   type Distancia is new Float;
   type Velocidad is new Float;
   type Tiempo is new Float;
   type Aceleracion is new Float;
   
   function Posicion_Final
     (Distancia, Velocidad, Tiempo, Aceleracion) return Distancia;

end Fisica;
