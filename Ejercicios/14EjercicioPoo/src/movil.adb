package body Movil is

   function Create(Posicion_X : Integer) return Coche is
      Result : Coche;
   begin
      Result := new Clase_Coche;
      Result.PosicionX := 0;
      Result.PosicionY := 0;
      Result.VelocidadX := 40;
      Result.VelocidadY := 50;
      
      return Result;
   end Create;
   
   function To_String(this : Clase_Coche) return String is
   begin
      return "Posicion (" & this.PosicionX'Image &
        "," & this.PosicionY'Image & "), Velocidad ("&
        this.VelocidadX'Image & "," &
        this.VelocidadY'Image & ")";
   end To_String;

end Movil;
