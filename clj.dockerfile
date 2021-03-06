FROM clojure:alpine

WORKDIR /quantified

CMD lein update-in :dependencies conj "[org.clojure/tools.nrepl \"0.2.12\"]" -- update-in :plugins conj "[refactor-nrepl \"2.3.0-SNAPSHOT\"]" -- update-in :plugins conj "[cider/cider-nrepl \"0.13.0-SNAPSHOT\"]" -- repl :headless :host 0.0.0.0 :port 7888
