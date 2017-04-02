(ns user
  (:require [mount.core :as mount]
            quantified.core))

(defn start []
  (mount/start-without #'quantified.core/http-server
                       #'quantified.core/repl-server))

(defn stop []
  (mount/stop-except #'quantified.core/http-server
                     #'quantified.core/repl-server))

(defn restart []
  (stop)
  (start))


