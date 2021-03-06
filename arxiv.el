(org-add-link-type
 "arxiv"
 ;; clicking
 (lambda (link-string) (browse-url (format "http://arxiv.org/abs/%s" link-string)))
 ;; formatting
(lambda (keyword desc format)
   (cond
    ((eq format 'html)
     (format  "<a href=\"http://arxiv.org/abs/%s\">arxiv:%s</a>" keyword  keyword))
    ((eq format 'latex)
     ;; write out the latex command
     (format "\\url{http://arxiv.org/abs/%s}" keyword)))))

;; arxiv:cond-mat/0410285
