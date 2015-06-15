class Dummy < ActiveRecord::Base

  include Statesman::Adapters::ActiveRecordQueries

  has_many :dummy_transitions,
    class_name:   "DummyTransition",
    dependent:    :destroy,
    inverse_of:   :dummy

  def state_machine
    @state_machine ||= DummyStateMachine.new(self, transition_class: DummyTransition)
  end

  class << self

    private

    def initial_state
      :new
    end

    def transition_class
      DummyTransition
    end

  end

end
