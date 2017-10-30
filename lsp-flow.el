;;; lsp-flow.el --- Flow-typed JavaScript support for lsp-mode

;; Version: 0.1
;; Package-Requires: ((emacs "25.1") (lsp-mode "3.0"))
;; Keywords: flow, javascript
;; URL: https://github.com/silverlyra/lsp-flow

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

(require 'lsp-mode)

(lsp-define-stdio-client lsp-flow "flow"
                         (lsp-make-traverser #'(lambda (dir)
                                                 (directory-files
                                                  dir
                                                  nil
                                                  "\\.flowconfig")))
                         '("flow-language-server", "--stdio", "--try-flow-bin"))

(provide 'lsp-flow)
;;; lsp-flow.el ends here
