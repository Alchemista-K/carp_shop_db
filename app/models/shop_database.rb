class ShopDatabase < ApplicationRecord
        #写真アップロード
        mount_uploader :photo, PhotosUploader
        
        #都道府県ドロップダウン
        include JpPrefecture
        jp_prefecture :prefecture_code
        
end
