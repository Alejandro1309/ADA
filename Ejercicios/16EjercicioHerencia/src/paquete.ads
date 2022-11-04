with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

package Paquete is

   type Clase_Figura is abstract tagged private;
   type Figura is access Clase_Figura'Class;
   -- El atributo class sirve para que el access apunte a objetos de subclase
      
   -- Getters
   function Get_Area(This : in Clase_Figura) return Float;
   
   -- Metodos
    procedure Calcular_Area(This : in Clase_Figura) is abstract;
   
   -- Subclases
   type Clase_Circulo is new Clase_Animal with private;
   function Create_Circulo(Nombre : String) return Figura;
   overriding procedure Calcular_Area(This : in Clase_Leon);
   
   type Clase_Triangulo is new Clase_Animal with private;
   function Create_Triangulo(Area : Float) return Figura;
   overriding procedure Calcular_Area(This : in Clase_Jirafa);
   
   type Clase_Cuadrado is new Clase_Animal with private;
   function Create_Cuadrado(Area : Float) return Figura;
   overriding procedure Calcular_Area(This : in Clase_Puma);
   
private

   type Clase_Figura is abstract tagged record 
      Nombre : Unbounded_String;
   end record;
      
   type Clase_Circulo is new Clase_Figura with record
      Radio : Float;
   end record;
   
   type Clase_Triangulo is new Clase_Figura with record
      BaseT : Float;
      AlturaT : Float;
   end record;
   
   type Clase_Cuadrado is new Clase_Figura with record
      BaseC : Float;
      AlturaC : Float;
   end record;

end Paquete;
