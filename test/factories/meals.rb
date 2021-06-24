FactoryBot.define do
  factory :meal do
    date {"2021/06/22"}
    menu_image_id {"example.jpg"}
    category {"朝食"}
    menu_detail {"おいしかった"}

    association :user
  end
end
