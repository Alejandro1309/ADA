with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings; use Ada.Strings;
with Ada.Strings.Fixed; use Ada.Strings.Fixed;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

package body IO is
   function Get_NopEmpty_Line
     (ErrorMessage : String := "Entrada vac?a. Ingrese de nuevo") return String is
      -- use Ada.Text_IO;
   begin
      loop
         declare
            Entrada : String := Get_Line;
         begin
            
            declare
               Entrada_Sin_Espacios : String :=  Trim(Entrada, Both);
            begin
               if (Entrada_Sin_Espacios'Length > 0) then 
                  return Entrada_Sin_Espacios;
               end if;
            end;
            
            -- Ada.Strings.Fixed.Trim(Entrada);
            -- Trim(Entrada,Both);
            -- if (Entrada'Length > 0) then return Entrada; end if;
         end;
         Put_Line(ErrorMessage);
      end loop;
   end Get_NopEmpty_Line;
   
   function Try_Get_Integer
     (Value : out Integer) return Boolean is
   begin
      Value := Integer'Value(Get_Line);
      return true;
   exception
      when others => return false;
   end Try_Get_Integer;
   
   --  function Get_Integer
   --    (ErrorMessage : String := "No ingreso un numero. Vuelva a intentarlo") return Integer is
   --  begin
   --     loop
   --        declare
   --           Value : Integer;
   --        begin
   --           if (Try_Get_Integer(Value) = True) then
   --              return Value;
   --           end if;
   --        end;
   --        Put_Line(ErrorMessage);
   --        Flush;
   --     end loop;
   --  end Get_Integer;
   
   function Get_Integer
     (ErrorMessage : String := "No ingreso un numero. Vuelva a intentarlo") return Integer is
      EntradaCorrecta : Boolean := false;
      Value : Integer;
   begin
      while not(EntradaCorrecta) loop
         EntradaCorrecta := Try_Get_Integer(Value);
         Put_Line(ErrorMessage);
      end loop;
      return Value;
   end Get_Integer;
   
end IO;
