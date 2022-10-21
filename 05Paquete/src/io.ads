package IO is

   function Get_NopEmpty_Line
     (ErrorMessage : String := "Entrada vacía. Ingrese de nuevo") return String;
      
   
   function Try_Get_Integer
     (Value : out Integer) return Boolean;

   function Get_Integer
     (ErrorMessage : String := "No ingreso un numero. Vuelva a intentarlo") return Integer;
   
end IO;
