package IO is
   
   Default_String_Error_Message : String := "Entrada vacía. Ingrese de nuevo";
   Default_Integer_Error_Message : String := "No ingreso un numero. Vuelva a intentarlo";

   function Get_NotEmpty_Line
     (Prompt : String := "";
      Error_Message : String := Default_String_Error_Message) return String;
      
   
   function Try_Get_Integer
     (Value : out Integer) return Boolean;

   function Get_Integer
     (Prompt : String := " ";
      Error_Message : String := Default_Integer_Error_Message) return Integer;
   
end IO;
