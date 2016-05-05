;;
;; Change color settings for tree graph
;;
(defface undo-tree-visualizer-default-face
  '((((class color)) :foreground "black"))
  "Face used to draw undo-tree in visualizer."
  :group 'undo-tree)

(defface undo-tree-visualizer-current-face
  '((((class color)) :foreground "blue"))
  "Face used to highlight current undo-tree node in visualizer."
  :group 'undo-tree)

(defface undo-tree-visualizer-active-branch-face
  '((((class color) (background dark))
     (:foreground "red" :weight bold))
    (((class color) (background light))
     (:foreground "black" :weight bold)))
  "Face used to highlight active undo-tree branch in visualizer."
  :group 'undo-tree)

(defface undo-tree-visualizer-register-face
  '((((class color)) :foreground "green"))
    "Face used to highlight undo-tree nodes saved to a register in visualizer."
    :group 'undo-tree)

(defface undo-tree-visualizer-unmodified-face
  '((((class color)) :foreground "blue"))
    "Face used to highlight nodes corresponding to unmodified buffers in visualizer."
    :group 'undo-tree)

;;
;; Enable undo-tree
;;
(add-to-list 'load-path (locate-user-emacs-file "el-get/undo-tree"))
(require 'undo-tree)
(global-undo-tree-mode)
