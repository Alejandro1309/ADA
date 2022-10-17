with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded; -- Declarar variables string sin definir la cantidad de caracteres
with Ada.Text_IO.Unbounded_IO; use Ada.Text_IO.Unbounded_IO; -- Para trabajar con strings sin libre de espacios

procedure Main is
   -- N: Integer;
   Edad : Integer := 0; -- OJO: A Ada le va a gustar más  que se especifique el rango de Edad (no se utiliza en este ejemplo)
   -- Nombre : String (1..10); -- Tiene que estar definido el tamaño
   Nombre : Unbounded_String; -- Con la libreria Ada.Strings.Unbounded no hace falta definirlo
begin
   -- -- Muestro un mensaje por pantalla
   -- -- Para comentar varias líneas Seleccionar el código > Pestaña "Code" > Selection > Comment Lines
   --  Ada.Text_IO.Put_Line("Hola Mundo Ada");
   --  Ada.Text_IO.Put_Line("Bienvenidos a un nuevo lenguaje de programación");
   --
   -- -- Una vez que agregamos el use (línea 1) no es necesario anteponer el nombre de la libreria
   --  Put_Line("Hola Mundo Ada");
   --  Put_Line("Bienvenidos a un nuevo lenguaje de programación");

   -- -- Declarar variables
   -- N:= 10;
   -- -- 'Image sirve para convertir Integer en String
   -- Put_Line(N'Image);

   -- -- Para mostrar por pantalla con Integer
   -- Ada.Integer_Text_IO.Put(N);
   -- -- Una vez que agregamos el use (línea 2) no es necesario anteponer el nombre de la libreria
   -- Put(N);
   -- -- Para el espacio que haya de variable a variable lo que se muestra en pantalla
   -- Put(Item => N, width => 3);
   -- Put(N, Width => 3);
   -- -- Para que se muestre el numero en binario
   -- Put(N, Base => 2);


   -- -- Obtener valores de E/S
   -- Put_Line("Ingrese un numero");
   -- Get(N);
   -- Put(N);

   -- Estructuras de control
   -- Put_Line("Ingrese su edad");
   -- Get(Edad);
   -- Put(Edad, width => 0);
   -- Put_Line(""); -- Para que lo siguiente salga en otra línea

   -- -- Solo un if
   -- if Edad >= 18 then
   --   Put_Line("Es mayor de edad");
   -- end if;

   -- -- If else
   -- if Edad >= 18 then
   --   Put_Line("Es mayor");
   -- else
   --   Put_Line("Es menor");
   -- end if;

   -- -- Else if
   -- if Edad < 18 then
   --   Put_Line("Es menor");
   -- elsif Edad in 18..70 then
   --   Put_Line("Es adulto");
   -- else
   --   Put_Line("Es un jubilado");
   -- end if;

   -- -- Con formato String
   Put_Line("Ingrese su nombre");
   Get_Line(Nombre);
   Put_Line("Ingrese su edad");
   Get(Edad);
   -- -- Si se pone detrás del numero se tiene que hacer esto para hacer la parada e introducir el nombre
   -- Put_Line("Ingrese su nombre");
   -- Get_Line(Nombre);
   -- Get_Line(Nombre);

   Put_Line("Hola " & Nombre);


   null;
end Main;
