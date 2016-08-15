FactoryGirl.define do
  factory :answer do
    # association :question
    question
    body "MyAnswerText"
  end
end
