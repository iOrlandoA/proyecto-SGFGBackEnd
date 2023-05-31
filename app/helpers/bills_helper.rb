module BillsHelper
    def billtypes
        Bill.billtypes.keys.map do |billtype|
            [Bill.billtypes, billtype]
        end
    end
end
