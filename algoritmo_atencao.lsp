;;primeira versão do algoritimo de atenção, tomando atenção com 21 possibilidades
(defun c:akinatordepobre ( )
  (setq alt '(79 123 45 10 13 63 19 2 5 8 1 98 17 25 3 88 9 12 35 18 101)) ;; defina os numeros aleatorios
  (setq div (LM:group<n alt 7));; so dividindo lista em tres de 7  
  (setq str (mapcar '(lambda ( x ) (mapcar 'itoa x) ) div))  
  (prompt "\nPENSE EM UM NUMERO E DIGITE EM QUAL LINHA ESTÁ")(princ)
  (setq per (JR:Perguntas str "1" ) per (cond ((= per "a") 1 ) ((= per "b") 2 ) ((= per "c") 3) ))  
  (setq rec ( JR:Embaralhar per div))  
  (setq seg (JR:Organizando rec))  
  (setq str (mapcar '(lambda ( x ) (mapcar 'itoa x) ) seg))  
  (setq per (JR:Perguntas str "2" ) )  
  (setq per (cond ((= per "a") 1 ) ((= per "b") 2 ) ((= per "c") 3) ))
  (setq rec ( JR:Embaralhar per seg))  
  (setq ter (JR:Organizando rec))
  (setq str (mapcar '(lambda ( x ) (mapcar 'itoa x) ) ter))  
  (setq per (JR:Perguntas str "3" ) )
  (setq per (cond ((= per "a") 1 ) ((= per "b") 2 ) ((= per "c") 3) ))
  (setq rec ( JR:Embaralhar per ter))  
  (prompt (strcat "\n\nO NUMERO QUE VOCE PENSOU FOI O " (itoa (nth 3 (cadr rec)))))
  (princ)
)


;; Organizando lista
(defun JR:Organizando ( lst  / old new)  
  (setq initial_list lst)
  (setq old (apply 'append initial_list) new '(nil nil nil))
  (while old
    (setq new (mapcar 'cons (list (car old) (cadr old) (caddr old)) new))
    (setq old (cdddr old))
  )
  (mapcar 'reverse new)
)

;; definindo onde cada coluna tem que ficar
(defun JR:Embaralhar  ( e l )
  (cond
    ((= e 1)(list(cadr l)(car l)(caddr l)))
    ((= e 2)(list(car l)(cadr l)(caddr l))) 
    ((= e 3)(list(car l)(caddr l)(cadr l)))
  )
)

;; funçao para criar perguntas
(defun JR:Perguntas ( l q )
  (setq p
    (getstring 
      (strcat
        "\nPENSE EM UM NUMERO E DIGITE EM QUAL LINHA ESTÁ""\n"
        "Linha A- "(fttx:lst->str (car l) " ")"\n"        
        "Linha B- "(fttx:lst->str (cadr l) " ")"\n"
        "Linha C- "(fttx:lst->str (caddr l) " ")"\n"
        q "° pergunta, qual linha o numero está: "           
      )
    )
  )
)

;; Group by Number  -  Lee Mac
(defun LM:group<n ( l n )
    (if l (LM:group<n-sub (cons nil l) n n))
)
(defun LM:group<n-sub ( l m n )
    (if (and (cdr l) (< 0 n))
        (LM:group<n-sub (cons (cons (cadr l) (car l)) (cddr l)) m (1- n))
        (cons (reverse (car l)) (LM:group<n (cdr l) m))
    )
)
