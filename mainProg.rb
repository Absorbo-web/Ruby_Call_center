require 'gtk3'

puts "Hello"
class MainProg
    @builder
    def initialize
        @builder = Gtk::Builder::new()
        @builder.add_from_file("GUI_Main.glade")
        @builder.get_object("mainApp").show()
        @builder.connect_signals() do |handler|
            begin
                method (handler)
                rescue 
                method (default)
            end
        end
        Gtk.main
    end

    def on_app_destroy
        Gtk.main_quit()
    end

    def signIn
        puts "ты нажал кнопку!"
    end

    def default
        puts "LOL no default"
    end
end

OOOJopa2 = MainProg.new()