class RankingsController < ApplicationController
    
    def have
        @rankings = Have.group(:item_id).order('count_id desc').limit(10).count(:id)
        @rankings.transform_keys!{|key| Item.find(key)}
        @title = "持っているものランキング"
    end
    
    def want
        @rankings = Want.group(:item_id).order('count_id desc').limit(10).count(:id)
        @rankings.transform_keys!{|key| Item.find(key)}
        @title = "欲しいものランキング"
    end
end
