class DummyStateMachine

  include Statesman::Machine

  state :new, initial: true
  state :intermediate
  state :final

  transition from: :new,          to: [:intermediate, :final]
  transition from: :intermediate, to: [:final]

end
