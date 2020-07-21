class Provincia < ApplicationRecord

    def self.carga_prov
        require 'net/http'
        require 'uri'
        prov= Net::HTTP.get URI('https://apis.datos.gob.ar/georef/api/provincias')
        #res= Net::HTTP.get URI('https://apis.datos.gob.ar/georef/api/localidades?provincia=jujuy&max=200')
        #res= Net::HTTP.get URI('https://apis.datos.gob.ar/georef/api/departamentos?provincia=jujuy&max=16')
        result = JSON.parse(prov)
        result["provincias"].each do |p|
            Provincia.create(nombre: p['nombre'])
            #puts p['nombre']
          #dp = Departamento.find_by(nombre: loc['departamento']['nombre'])
          #Localidad.create(nombre: loc['nombre'],departamento_id: dp.id)
        end
          
    end

    def self.carga_dto
        require 'net/http'
        require 'uri'
        dto= Net::HTTP.get URI('https://apis.datos.gob.ar/georef/api/departamentos?provincia=jujuy&campos=id,nombre&max=100')
       
        result = JSON.parse(dto)
        result["departamentos"].each do |d|
            iddto = d['id']
            nuevodto = Departamento.new(nombre: d['nombre'], provincia_id: 45)
            if nuevodto.save
                loc= Net::HTTP.get URI('https://apis.datos.gob.ar/georef/api/localidades?departamento='+iddto+'&campos=nombre&max=100')
                
                resultl = JSON.parse(loc)
                resultl["localidades"].each do |l|
                Localidad.create(nombre: l['nombre'], departamento_id: nuevodto.id, provincia_id: 45)
                end
            end
         
        end
          
    end

    def self.cargaafi
        require 'csv'
        table = CSV.parse(File.read("/home/daniq/adherentes.csv"), headers: true)
        
        (0..52).each do |i|
           afi = Afiliado.find_by(dni: table[i]['dni'])

           if afi.nil?
               nuevo = Afiliado.new(dni: table[i]['dni'],nombre: table[i]['nombre'], apellido: table[i]['apellido'],sexo: table[i]['sexo'], 
                    domicilio: table[i]['dom'], telefono: table[i]['tel'], provincia_id: 45, email: table[i]['mail'], origen_id: 2)
                    if nuevo.save
                    puts 'creado'
                    else
                       puts nuevo.errors.full_messages
                    end
           end
        end
  
    end
end
