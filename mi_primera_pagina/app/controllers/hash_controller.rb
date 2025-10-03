class HashController < ApplicationController
  def mostrar
    @persona = {
      nombre: "Ana",
      apellido: "García",
      telefono: "7777-1234",
      correo: "anagarcia@example.com"
    }
  end
end
