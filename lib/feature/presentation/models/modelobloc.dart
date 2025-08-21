class UsuarioDato{
  String? nombre;
  String? correo;
  int? telefono;

  UsuarioDato(Map data){
    this.nombre = data['nombre'];
    this.correo = data['correo'];
    this.telefono = data['telefono'];
  }

}