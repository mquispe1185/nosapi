# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Origen.create([{descripcion: 'Coloquio JJGC 18/02'},{descripcion: 'Fiscal Gral 2019'},
    {descripcion: 'Formulario Contacto'},{descripcion: 'Grupo WSP NOS Jujuy'},{descripcion: 'Reunion Perico 2019'},
    {descripcion: 'Stand Plaza 08/03'},{descripcion: 'Stand Plaza 13/03'},{descripcion: 'Visita JJGC 2019'}])

Estadocontacto.create([{descripcion: 'aún no contactado'}, {descripcion: 'contactado SI interesado'}, 
        {descripcion: 'contactado NO interesado'},{descripcion: 'NO responde'}])
