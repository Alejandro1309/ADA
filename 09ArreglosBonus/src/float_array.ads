package Float_Array is
   -- Declara un tipo de Arreglo de Float (Abierto/unconstrained)
      type Array_Float is Array(Positive range <>) of Float;
   
   -- Declara una funcion que recibe un numero N y me devuelve un arreglo
   -- de numeros al azar de N posiciones
   function Array_Numeros_Aleatorios(Num_N : in Integer) return Array_Float;
   
   -- Declara una funcion que recibe un arreglo de ese tipo y me devuelve la
   -- sumatoria con 'First y 'Last
   function Sumatoria(Entrada: Array_Float) return Float;
   -- Declara una funcion que recibe un arreglo de ese tipo y me devuelve el
   -- promedio
   function Promedio(Arreglo_Media : in Array_Float) return Float;
      
   -- Un procedimiento que muestra el arreglo por pantalla
   procedure Mostrar (Arr : Array_Float);
      
   -- Mayores
   -- Una funcion que recibe un array y un valor
   -- Devuelve otro array con los valores mayores al parametro
   function Mayores(Arreglo : Array_Float; Valor : Float) return Array_Float;

end Float_Array;
