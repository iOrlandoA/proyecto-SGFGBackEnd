module AreasHelper
    def area_types
        Area.area_types.keys.map do |area_type|
            [Area.area_types, area_type]
        end
    end
end
