require 'state/actions/action'
require 'state/support/data_access_sqlite3'

class EchoFlagToStdout

  attr_accessor :flag, :phase, :state, :payload

  def initialize(control)
    @flag = 'ECHO_FLAG_TO_STDOUT'
    @phase = 'RUNTIME'
    @state = 'ACT'
    @payload = 'NULL'
    save_action(self, control)
  end

  def execute(args)

    if args[:phase] == @phase && @state == 'ACT'
      puts @flag
    end

  end

end
