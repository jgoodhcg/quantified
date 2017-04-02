(ns quantified.env
  (:require [selmer.parser :as parser]
            [clojure.tools.logging :as log]
            [quantified.dev-middleware :refer [wrap-dev]]))

(def defaults
  {:init
   (fn []
     (parser/cache-off!)
     (log/info "\n-=[quantified started successfully using the development profile]=-"))
   :stop
   (fn []
     (log/info "\n-=[quantified has shut down successfully]=-"))
   :middleware wrap-dev})
