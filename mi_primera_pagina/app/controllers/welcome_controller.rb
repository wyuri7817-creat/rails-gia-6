class WelcomeController < ApplicationController
  def index
    @dias_semana = ["Lunes","Martes","Miércoles","Jueves","Viernes","Sábado","Domingo"]
  end
end
