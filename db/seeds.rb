Region.transaction do
  regions = ['АР Крым', 'Винницкая область', 'Волынская область', 'Днепропетровская область',
             'Донецкая область', 'Житомирская область', 'Закарпатская область',
             'Запорожская область', 'Ивано-Франковская область', 'Киевская область',
             'Кировоградская область', 'Луганская область', 'Львовская область',
             'Николаевская область', 'Одесская область', 'Полтавская область',
             'Ровненская область', 'Сумская область', 'Тернопольская область',
             'Харьковская область', 'Херсонская область', 'Хмельницкая область',
             'Черкасская область', 'Черниговская область', 'Черновицкая область']
  regions.each { |region| Region.find_or_create_by(name: region) }

  zp_cities = ['Запорожье']
  zp_region = Region.find_by(name: 'Запорожская область')
  zp_cities.each { |cities| City.find_or_create_by(name: cities, region_id: zp_region.id) }

  zp_city =  City.find_by(name: 'Запорожье')
  zp_districts = %w(Александровский Заводский Коммунарский Днепровский Вознесеновский Хортицкий Шевченковский)
  zp_districts.each { |district| District.find_or_create_by(name: district, city_id: zp_city) }
end
