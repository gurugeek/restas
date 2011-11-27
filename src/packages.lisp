;;;; packages.lisp
;;;;
;;;; This file is part of the RESTAS library, released under Lisp-LGPL.
;;;; See file COPYING for details.
;;;;
;;;; Author: Moskvitin Andrey <archimag@gmail.com>


(defpackage :restas
  (:use :cl :iter :split-sequence)
  (:export #:*default-host-redirect*
           #:*bindings*
           #:*route*
           #:*submodule*

           ;; acceptors
           #:restas-acceptor
           #:restas-ssl-acceptor
           
           ;; routes
           #:route
           #:define-route
           #:route-symbol
           #:genurl
           #:genurl-submodule
           #:gen-full-url
           #:redirect
           #:parse-route-url
           #:abort-route-handler

           #:process-route
           
           ;; modules
           #:define-module
           #:initialize-module-instance
           #:finalize-module-instance
           #:define-default-render-method
           
           ;; submodules
           #:submodule
           #:mount-submodule
           #:submodule
           #:submodule-symbol
           #:submodule-module
           #:submodule-parent
           #:submodule-baseurl
           #:connect-submodule
           #:with-submodule-context
           #:with-submodule
           #:find-submodule
           #:submodule-context
           #:find-upper-submodule

           #:make-submodule
           #:submodule-routes
           #:module-routes
           
           ;; render
           #:render-object
           
           ;; cache
           #:define-memoized-function
           #:with-memoization
           
           ;; context
           #:make-context
           #:context-add-variable
           #:context-remove-variable
           #:context-symbol-value
           #:with-context
           #:copy-restas-context
           
           ;; service
           #:start
           #:stop-all
           #:reconnect-all-routes
           
           ;; debug
           #:*max-debugging-threads*
           #:debug-mode-on
           #:debug-mode-off
           
           ;; misc
           #:request-full-uri

           ;; decorators
           #:@no-cache

           #:@nginx-accel-redirect
           #:*nginx-internal-location*
           #:*nginx-internal-alias*
           #:*nginx-internal-root*
           
           #:@apache-xsendfile))
