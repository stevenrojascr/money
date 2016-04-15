class Movement < ActiveRecord::Base
  scope :search, ->(data) {
    mov_class= data[:mov_class] if data[:mov_class].present?
    date1= data[:date1] if data[:date1].present?
    date2= data[:date2] if data[:date2].present?
    description= "%#{data[:description]}%" if data[:description].present?
    entity= data[:entity] if data[:entity].present?
    where("(mov_class = :mov_class OR :mov_class IS NULL)", mov_class: mov_class)
    .where("(entity = :entity OR :entity IS NULL)", entity: entity)
      .where("(description LIKE :description OR :description IS NULL)", description: description)
      .where("(date >= :date1 OR :date1 is NULL)", date1: date1)
        .where("(date <= :date2 OR :date2 is NULL)", date2: date2)

  }
end
