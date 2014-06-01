module Plan
  class App

    # Name of your project.
    def name
      "my_new_app"
    end

    # List of dependencies. This list is a starting point, and you can
    # add more either now or later. For each gem, we'll include the
    # latest version in the final .gems manifest. Feel free to change
    # it at will.
    def gems
      [
        "cuba",
        "cuba-contrib",
        "mote",
        "ohm",
        "ohm-contrib",
        "rack-protection",
        "scrivener",
        "scrivener_errors",
        "shield"
      ]
    end

    # See http://bootswatch.com for all alternatives
    def bootswatch_theme
      # 'darkly'
      # 'flatly'
      # 'journal'
      'lumen'
      # 'readable'
      # 'simplex'
      # 'superhero'
    end

    def destination
      "#{name}/app.rb"
    end
  end

  if App.new.gems.include?('shield')
    class User < App
      def destination
        "#{name}/models/user.rb"
      end
    end
  end

  class Gemfile < App
    def destination
      "#{name}/Gemfile"
    end
  end

  class Config < App
    def destination
      "#{name}/config.ru"
    end
  end

  class Css < App
    def destination
      "#{name}/public/css/app.css"
    end
  end

  class Js < App
    def destination
      "#{name}/public/js/app.js"
    end
  end

  class Index < App
    def destination
      "#{name}/views/index.mote"
    end
  end

  class Layout < App
    def content
      '{{ content }}'
    end

    def destination
      "#{name}/views/layout.mote"
    end
  end

  class Makefile < App
    def destination
      "#{name}/Makefile"
    end
  end
end
