FactoryBot.define do

  factory :bid_log, class: BidLog do
    amount 1
    user nil
  end

  factory :bid_log2, class: BidLog do
    amount 2
    user
  end
end
