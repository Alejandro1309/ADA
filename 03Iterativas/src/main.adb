with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with Ada.Numerics.Float_Random; use Ada.Numerics.Float_Random; -- Para numeros aleatorios
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

procedure Main is

   -- Sumatoria : Integer := 0;
   -- Entrada_Datos : Integer;
   N : Integer;
begin
   -- Manejo de excepciones
   Get(N);
exception
      when Data_Error => Put_Line("Error");

   -- -- Calcule la sumatoria de valores hasta que el usuario ingrese un 0
   -- Put_Line("Ingrese valores. Un 0 finaliza la carga");
   -- Put_Line("Se calcula la sumatoria");
   -- loop
   --    Get(Entrada_Datos);
   --    exit when (Entrada_Datos = 0);
   --    Sumatoria := Sumatoria + Entrada_Datos;
   -- end loop;
   --
   -- Put_Line("La sumatoria es " & Sumatoria'Image);

   -- -- Mismo Ejemplo con While
   -- Put_Line("Ingrese valores. Un 0 finaliza la carga");
   -- Put_Line("Se calcula la sumatoria");
   -- Get(Entrada_Datos);
   -- while Entrada_Datos /= 0 loop -- "/=" Significa distinto, en java "!="
   --    Sumatoria := Sumatoria + Entrada_Datos;
   --    Get(Entrada_Datos);
   -- end loop;
   -- Put_Line("La sumatoria es " & Sumatoria'Image);

   -- declare
   --    Edad : Integer;
   -- begin
   --    Put_Line("Ingrese su edad");
   --    Get(Edad);
   --    case Edad is
   --       when 0|1|2 =>
   --          Put_Line("Es un recién nacido");
   --       when 3..9 => Put_Line("Es un infante");
   --       when 10..18 => Put_Line("Es un joven");
   --       when 19..49 => Put_Line("Es un adulto");
   --       when 50 => Put_Line("Medio siglo de vida");
   --       when others => Put_Line("Mayores de 50");
   --    end case;
   -- end;

   -- -- Introduciendo a los strings
   -- -- Forma explícita de definir un string
   -- declare
   --    S : String (1..7); -- Explicita de definir un string
   -- begin
   --    S := "Esteban";
   --    Put_Line(S);
   -- end;

   -- -- Otro ejemplo de String
   -- -- Forma implícita de definir un string
   -- Put_Line("Ingrese su nombre");
   -- declare
   --    Nombre : String := Get_Line;
   -- -- Nombre : String := "Esteban";
   -- begin
   --    Put_Line("Hola " & Nombre);
   -- end;

   -- -- Un programa que pregunte valores positivo hasta que se ingrese 0
   -- Utilizar un bloque declare
   -- El programa me muestra el maximo
   -- declare
   --    Maximo : Integer := 0;
   --    Entrada_Datos : Integer;
   -- begin
   --    Put_Line("Ingrese valores. Un 0 finaliza la carga");
   --    Put_Line("Se calcula la sumatoria");
   --    loop
   --       Get(Entrada_Datos);
   --       exit when (Entrada_Datos = 0);
   --       if Entrada_Datos > Maximo then
   --          Maximo := Entrada_Datos;
   --       end if;
   --    end loop;
   --
   --    Put_Line("El maximo es " & Maximo'Image);
   -- end;

   -- "Operador ternario"
   --  declare
   --     Edad: Integer;
   --  begin
   --     Get(Edad);
   --     -- if (Edad >= 18) then
   --     --    Put_Line("Es mayor");
   --     -- else
   --     --    Put_Line("Es menor");
   --     -- end if;
   --     -- Put_Line( if (Edad >= 18) then "Es mayor" else "Es menor"); -- Es lo mismo que poner lo de arriba
   --
   --     Put_Line( case Edad is
   --                  when 0..17 => "Es menor",
   --                  when 18..60 => "Es mayor",
   --                  when others => "Es senior");
   --  end;

   -- -- Que el usuario ingrese numeros
   -- -- Calcular total numeros ingresados, cantidad de numeros pares, cantidad impares
   -- -- Utilizar un expresion if
   --  declare
   --     Valor_introducido : Integer;
   --     Num_par : Integer := 0;
   --     Num_imp : Integer := 0;
   --     Num_tot : Integer := 0;
   --  begin
   --     Put_Line("Ingrese valores. Un 0 finaliza la carga");
   --     loop
   --        Get(Valor_introducido);
   --        exit when (Valor_introducido = 0);
   --        if Valor_introducido mod 2 /= 0 then
   --           Num_par := Num_par + 1;
   --        else
   --           Num_imp := Num_imp + 1;
   --        end if;
   --        Num_tot := Num_tot + 1;
   --     end loop;
   --     Put_Line("El total de numeros introducidos es " & Num_tot'Image);
   --     Put_Line("El total de numeros pares introducidos es " & Num_par'Image);
   --     Put_Line("El total de numeros impares introducidos es " & Num_imp'Image);
   --  end;

   -- Generar numeros flotantes al azar
   --  declare
   --     G : Generator; -- Para generar numeros al azar, con la librería del principio
   --     Numero_Al_Azar : Uniformly_Distributed;
   --  begin
   --     for I in 1..10 loop
   --        Numero_Al_Azar := Random(G);
   --        -- El primero es para los numeros antes de la coma
   --        -- El segundo 0 es para poner los decimales, numeros depues de la coma
   --        -- El tercero para la notificacion cientifica
   --        Put(Numero_Al_Azar,0,0,0);
   --        Put_Line("");
   --     end loop;
   --  end;

   -- Generar numeros enteros al azar entre 1 y 10
   --  declare
   --     G : Generator;
   --     Numeros_Al_Azar : Integer;
   --  begin
   --     Reset(G);
   --     for I in 1..20 loop
   --        -- Numeros_Al_Azar := Integer(Random(G) * 10.0) + 1; -- Se puede escribir de las dos maneras
   --        Numeros_Al_Azar := Integer((Random(G) * 9.0) + 1.0); -- 9.0 para que de numeros del 0-9 y se le añade 1 para que sea de 1-10
   --        Put_Line(Numeros_Al_Azar'Image);
   --     end loop;
   --  end;
   null;
end Main;
