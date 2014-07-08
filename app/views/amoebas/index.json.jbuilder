json.array!(@amoebas) do |amoeba|
  json.extract! amoeba, :id, :name, :generation, :act_id, :talent_id
  json.url amoeba_url(amoeba, format: :json)
end
