# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"

pin_all_from 'app/components', under: 'controllers', to: 'components'


pin "dayjs", to: "https://ga.jspm.io/npm:dayjs@1.11.8/dayjs.min.js"
pin "dayjs/plugin/duration", to: "https://ga.jspm.io/npm:dayjs@1.11.8/plugin/duration.js"
pin "dayjs/plugin/relativeTime", to: "https://ga.jspm.io/npm:dayjs@1.11.8/plugin/relativeTime.js"
pin "dayjs/plugin/utc", to: "https://ga.jspm.io/npm:dayjs@1.11.8/plugin/utc.js"
pin "dayjs/plugin/timezone", to: "https://ga.jspm.io/npm:dayjs@1.11.8/plugin/timezone.js"
pin "flatpickr", to: "https://ga.jspm.io/npm:flatpickr@4.6.13/dist/esm/index.js"
pin "@editorjs/editorjs", to: "https://ga.jspm.io/npm:@editorjs/editorjs@2.27.0/dist/editorjs.mjs"
pin "lodash", to: "https://ga.jspm.io/npm:lodash@4.17.21/lodash.js"
