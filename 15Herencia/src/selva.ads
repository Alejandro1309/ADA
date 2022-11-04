with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO; use Ada.Text_IO;

package Selva is

   -- type Clase_Animal is tagged private;
   type Clase_Animal is abstract tagged private;
   type Animal is access Clase_Animal'Class;
   -- El atributo class sirve para que el access apunte a objetos de subclase
      
   --  -- Constructores(Animal es una clase abstracta)
   --  function Create(Un_Nombre : String) return Animal;
   -- Getters
   function Get_Nombre(This : in Clase_Animal) return String;
   
   -- Metodos
    procedure Hablar(This : in Clase_Animal) is abstract;
   
   -- Subclases
   type Clase_Leon is new Clase_Animal with private;
   function Create_Leon(Un_Nombre : String) return Animal;
   overriding procedure Hablar(This : in Clase_Leon);
   
   type Clase_Jirafa is new Clase_Animal with private;
   function Create_Jirafa(Un_Nombre : String) return Animal;
   overriding procedure Hablar(This : in Clase_Jirafa);
   
   type Clase_Puma is new Clase_Animal with private;
   function Create_Puma(Un_Nombre : String) return Animal;
   overriding procedure Hablar(This : in Clase_Puma);
   
private
   
   --  type Clase_Animal is tagged record
   --     Nombre : Unbounded_String;
   --  end record;
   
   type Clase_Animal is abstract tagged record 
      Nombre : Unbounded_String;
   end record;
      
   type Clase_Leon is new Clase_Animal with record
      null;
   end record;
   
   type Clase_Jirafa is new Clase_Animal with record
      null;
   end record;
   
   type Clase_Puma is new Clase_Animal with record
      null;
   end record;
   
end Selva;
