class EchoFlagToStdout

  attr_accessor :flag, :phase, :state, :payload

  def initialize
    @flag = 'ECHO_FLAG_TO_STDOUT'
    @phase = 'RUNTIME'
    @state = 'ACT'
    @payload = nil
  end

  def execute(args)

    if args[:phase] == phase && @state == 'ACT'
      puts @flag
    end

  end

end
