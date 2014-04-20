module Plan
  class App

    # Name of your project.
    def name
      "foo"
    end

    # List of dependencies. This list is a starting point, and you can
    # add more either now or later. For each gem, we'll include the
    # latest version in the final .gems manifest. Feel free to change
    # it at will.
    def gems
      [
        "cuba",
        "cuba-contrib",
        "ohm",
        "ohm-contrib",
        "rack-protection",
        "shield",
        "thin"
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
      "#{name}/views/index.erb"
    end
  end

  class Layout < App
    def destination
      "#{name}/views/layout.erb"
    end
  end
end
