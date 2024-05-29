# config/importmap.rb
pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "@hotwired--stimulus.js" # @3.2.2
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin "bootstrap", to: "https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/js/bootstrap.bundle.min.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "stimulus" # @3.2.2
