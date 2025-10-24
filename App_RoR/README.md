# App_RoR (sample Rails app with RSpec)

This is a skeleton Rails 5.2 application configured for TDD using RSpec and Capybara,
prepared following the provided "Guía 8: Ruby on Rails con TDD".

## Requisitos
- Ruby 2.4.1 (as specified by the guide) or a compatible Ruby 2.4.x
- Rails (~> 5.2.4)
- Bundler

## Instrucciones para ejecutar (en tu máquina local)
1. Clona o descomprime este proyecto y entra en la carpeta:
   ```
   cd App_RoR
   ```

2. Instala las gemas:
   ```
   gem install bundler
   bundle install
   ```

3. Crea la base de datos y ejecuta migraciones (este proyecto usa sqlite3 por defecto):
   ```
   rails db:create
   rails db:migrate
   ```

4. Ejecuta el servidor:
   ```
   rails server
   ```
   y abre http://localhost:3000

5. Ejecuta las pruebas RSpec:
   ```
   bundle exec rspec
   ```

Si usas una versión distinta de Ruby/Rails, ajusta el `Gemfile` según tus versiones.
