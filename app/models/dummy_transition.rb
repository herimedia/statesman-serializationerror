class DummyTransition < ActiveRecord::Base

  include Statesman::Adapters::ActiveRecordTransition

  belongs_to :dummy,
    class_name: "Dummy",
    inverse_of: :dummy_transitions

end
