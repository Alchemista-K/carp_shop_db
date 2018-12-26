class Page < ApplicationRecord
        
        #都道府県ドロップダウン
        include JpPrefecture
        jp_prefecture :prefecture_code
        
end