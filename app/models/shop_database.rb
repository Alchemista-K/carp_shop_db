class ShopDatabase < ApplicationRecord
  
  # 空の投稿を制限するバリデーション(shop_name、introduction、address、tel_number、comment)
  validates:shop_name, {presence: true}
  validates:introduction, {presence: true}  
  validates:address, {presence: true} 
  validates:tel_number, {presence: true}   
  validates:comment, {presence: true}  
  
  
        #写真アップロード
        mount_uploader :photo, PhotosUploader
        
        #都道府県ドロップダウン
        include JpPrefecture
        jp_prefecture :prefecture_code
        
end
