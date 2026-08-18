;; mep-layer-setup.lsp
;; Create the full MEP layer standard (HVAC / Electrical / Plumbing)
;; Run command: MEPSETUP
;; Tested with GSTARCAD 2024-2026
(defun c:MEPSETUP (/ layers)
  (setq layers
    '(
      ("M-HVAC-SUPL" 1 "Continuous")
      ("M-HVAC-RETN" 2 "Continuous")
      ("M-HVAC-TEXT" 7 "Continuous")
      ("E-POWER"     3 "Continuous")
      ("E-LIGHT"     4 "Continuous")
      ("E-FIRE"      6 "Dashed")
      ("P-CWTR"      5 "Continuous")
      ("P-HWTR"      5 "Dashed")
      ("P-SANR"      5 "Hidden")
      ("G-EQPM-TAG"  7 "Continuous")
    )
  )
  (foreach item layers
    (if (not (tblsearch "LAYER" (car item)))
      (command "._LAYER" "_New" (car item) "_Color" (cadr item) (car item) "_Ltype" (caddr item) (car item) "")
    )
  )
  (princ (strcat "\nMEP layer standard created: " (itoa (length layers)) " layers."))
  (princ)
)