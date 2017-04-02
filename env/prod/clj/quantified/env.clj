(ns quantified.env
  (:require [clojure.tools.logging :as log]))

(def defaults
  {:init
   (fn []
     (log/info "\n-=[quantified started successfully]=-"))
   :stop
   (fn []
     (log/info "\n-=[quantified has shut down successfully]=-"))
   :middleware identity})
