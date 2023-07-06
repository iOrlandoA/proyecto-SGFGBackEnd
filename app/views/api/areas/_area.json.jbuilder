json.extract! area, :id, :area_type, :name, :visible, :created_at, :updated_at
json.bills area.bills
json.url area_url(area, format: :json)
