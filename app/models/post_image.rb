class PostImage < ApplicationRecord
	belongs_to :user
	attachment :image  #(①idは含めない ②メソッドを追加してフィールド名にimages指定)
end
