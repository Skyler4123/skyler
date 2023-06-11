# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"

pin_all_from 'app/components', under: 'controllers', to: 'components'


pin "dayjs", to: "https://ga.jspm.io/npm:dayjs@1.11.8/dayjs.min.js"
pin "dayjs/plugin/objectSupport", to: "https://ga.jspm.io/npm:dayjs@1.11.8/plugin/objectSupport.js"
