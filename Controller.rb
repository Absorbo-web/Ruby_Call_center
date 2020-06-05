require 'gtk3'
# require 'mainProg.rb'

puts "Hello"
class Controller
    @builder
    def initialize
        @builder = Gtk::Builder::new()
        @builder.add_from_file("GUI.glade")
        @register_window = @builder.get_object("app")
        @register_window.show()
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
        if not @has_main_window
            Gtk.main_quit()
        end
    end

    def on_mainApp_destroy
        @has_main_window = false
        @builder.add_from_file("GUI.glade")
            
        @register_window = @builder.get_object('app')
        # connect_main_window()
        @builder.connect_signals() do |handler|
            begin
                method (handler)
                rescue 
                method (default)
            end
        end

        @main_window.close()
        @main_window = nil
        @register_window.show()
    end

    def signIn
        puts "ты нажал кнопку!"
        login = @builder.get_object("entry1").text
        pass = @builder.get_object("entry2").text
        if login == "123" and pass == "123"
            puts "heeee"
            @builder.add_from_file("GUI_Main.glade")
            
            @main_window = @builder.get_object('mainApp')
            @has_main_window = true
            # connect_main_window()
            @builder.connect_signals() do |handler|
                begin
                    method (handler)
                    rescue 
                    method (default)
                end
            end

            @register_window.close()
            @register_window = nil
            @main_window.show()
        end

    end

    def default
        puts "LOL no default"
    end
end

OOOJopa = Controller.new()

# @client = Mysql2::Client.new(:username => 'root', :password => 'password', :host => '127.0.0.1', :database => 'testdb')