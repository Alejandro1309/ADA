package body Paquete is

    function Create_Triangulo(Nombre : String) return Figura is
      Result : Figura := new Clase_Triangulo;
   begin
      Result.Nombre := To_Unbounded_String(Un_Nombre);
      return Result;
   end Create_Triangulo;
   
   procedure  Calcular_Area(This : in Clase_Triangulo) is
      Resultado : Float;
   begin
      Resultado := (This.BaseT * This.AlturaT) / 2;
      Put_Line("El area del triangulo es " & Resultado);
   end Calcular_Area;
   
   function Create_Circulo(Nombre : String) return Figura is
      Result : Figura := new Clase_Circulo;
   begin
      Result.Nombre := To_Unbounded_String(Un_Nombre);
      return Result;
   end Create_Circulo;
   
   procedure Calcular_Area(This : in Clase_Circulo) is
   Resultado : Float;
   begin
      Resultado := (This.Radio**2) * 3.14;
      Put_Line("El area del triangulo es " & Resultado);
   end Calcular_Area;
   
   function Create_Cuadrado(Un_Nombre : String) return Figura is
      Result : Figura := new Clase_Cuadrado;
   begin
      Result.Nombre := To_Unbounded_String(Un_Nombre);
      return Result;
   end Create_Cuadrado;
   
   procedure Calcular_Area(This : in Clase_Cuadrado) is
   Resultado : Float;
   begin
      Resultado := (This.BaseC * This.AlturaC);
      Put_Line("El area del cuadrado es " & Resultado);
   end Calcular_Area;
   
   function Get_Nombre(This : in Clase_Animal) return String is
   begin
      return To_String(This.Nombre);
   end Get_Nombre;

end Paquete;
