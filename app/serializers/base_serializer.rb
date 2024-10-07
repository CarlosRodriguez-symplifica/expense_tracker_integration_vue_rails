OjSerializers::Serializer::ALLOWED_INSTANCE_VARIABLES |= ['scope']

class BaseSerializer < Oj::Serializer
  private

  def scope
    @scope ||= RequestLocals[:current_controller]
  end
end
