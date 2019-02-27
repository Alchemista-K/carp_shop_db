class ShopDatabase < ApplicationRecord
  
  
=begin
  空の投稿を制限するバリデーション
  (shop_name、introduction、address、tel_number、comment)(2019.2.26)
=end
=begin  
  文字数を制限するバリデーション
  introductionは最大200文字、addressは最大50文字 
  tel_numberは最大11文字、commentは最大200文字
  (2019.2.27)
=end

  validates:shop_name, {presence: true}
  validates:introduction, {presence: true, length:{maximum:200}}  
  validates:address, {presence: true, length:{maximum:50}}
  validates:tel_number, {presence: true, length:{maximum:11}}
  validates:comment, {presence: true, length:{maximum:200}}  
  
  
        #写真アップロード
        mount_uploader :photo, PhotosUploader
        
        #都道府県ドロップダウン
        include JpPrefecture
        jp_prefecture :prefecture_code
        
end
