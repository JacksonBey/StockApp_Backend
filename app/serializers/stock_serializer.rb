class StockSerializer
  include FastJsonapi::ObjectSerializer
  attributes :value, :company, :industry, :description
end
