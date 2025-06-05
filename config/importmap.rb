# Pin npm packages by running ./bin/importmap

pin "application"
pin_all_from "app/javascript/controllers", under: "controllers"

pin "bootstrap", to: "https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
pin "@rails/ujs", to: "https://ga.jspm.io/npm:@rails/ujs@7.1.0/lib/assets/compiled/rails-ujs.js"

pin "trix"
pin "@rails/actiontext", to: "actiontext.esm.js"
