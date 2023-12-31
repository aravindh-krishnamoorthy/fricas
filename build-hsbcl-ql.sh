#! /bin/sh

echo 'This document generates "hsbcl_ql" executable containing SBCL and Hunchentoot web browser using QuickLisp (https://www.quicklisp.org/).'
echo 
echo 'In case QuickLisp is not already installed, install QuickLisp by following the instructions on https://www.quicklisp.org/.'
echo 'Make sure to add the QuickLisp load macros to your init file via "(ql:add-to-init-file)"'
echo
echo 'Now generating "hsbcl_ql"...'

sbcl --eval '(ql:quickload "hunchentoot")' --eval '(sb-ext::save-lisp-and-die "./hsbcl_ql" :executable t)' --quit
