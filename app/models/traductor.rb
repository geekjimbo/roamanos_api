class Traductor
  # this is an abstract class implementing tracking inheritance for specific classes
  # this is the single entrypoint to instantiate Traductor Classes
  class << self
    def inherited(base)
      lenguajes << base
    end

    def lenguajes
      @lenguajes = [Espanol,English]
    end

    def success_msg(lenguaje="", options={})
       resp = common lenguaje, "success_msg", options
       resp
    end

    def fail_msg(lenguaje="", options={})
       resp = common lenguaje, "fail_msg", options
       resp
    end

    private

      def common(_lenguaje="", method_name="", options={})
         resp = {}
         lenguajes.each do |lenguaje|
           lenguaje.instance_methods.grep(/#{method_name}/).each do |m|
             traductor_api = lenguaje.new
             resp = traductor_api.send(m, options)
           end if "#{lenguaje}" == _lenguaje
         end
         resp
      end
  end
end
