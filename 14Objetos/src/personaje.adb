package body Personaje is
   
   function Create(Nombre : String) return Campeon is
      Result : Campeon;
   begin
      Result := new Clase_Campeon;
      Result.Nombre := To_Unbounded_String(Nombre);
      Result.Nivel := 1;
      Result.Experiencia := 0;
      
      return Result;
   end Create;
   
   function Get_Nombre(this : Clase_Campeon) return String is
   begin
      return To_String(this.Nombre);
   end Get_Nombre;
   
   function Get_Nivel(this : Clase_Campeon) return Niveles is
   begin
      return (this.Nivel);
   end Get_Nivel;

   function To_String(this : Clase_Campeon) return String is
   begin
      return "Soy el campeon " & To_String(this.Nombre) &
        "( HP :" & this.Hp'Image & ", "&
        "Nivel : " & this.Nivel'Image & ")";
   end To_String;

end Personaje;
