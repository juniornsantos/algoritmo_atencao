;algoritmo_atencao -> teste com vinte e uma opcoes
(setq opcoes '( 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21))
;;meu 2 é o 9 de ouro
;;meu 1 é o as de espadas
;;meu 3 é o k de outro
;;10 paus é o meu 21

(setq minha_escolha 1)
;;organiza em tres montes e escolho o 1

(setq primeira_pergunta (list  '(1 4 7 10 13 16 19)  '(2 5 8 11 14 17 20)  '(3 6 9 12 15 18 21)))
;;recolhendo as cartas
(setq recolhendo_as_cartas (list '(2 5 8 11 14 17 20) '(1 4 7 10 13 16 19) '(3 6 9 12 15 18 21)))


;;recolhendo as cartas apos segunda pergunta
(setq segunda_pergunta (list  '(2 5 8 11 14 17 20) '(1 4 7 10 13 16 19) '(3 6 9 12 15 18 21)))
(setq recolhendo_as_cartas (list '(2 5 8 11 14 17 20) '(1 4 7 10 13 16 19) '(3 6 9 12 15 18 21)))



(setq terceira_pergunta (list '(2 5 8 11 14 17 20 )'(1 4 7 10 13 16 19 )'(3 6 9 12 15 18 21)))
(setq recolhendo_as_cartas (list '(2 5 8 11 14 17 20) '(1 4 7 10 13 16 19) '(3 6 9 12 15 18 21)))

;;resposta é a quarta carta do monte do meio na terceira pergunta



(defun c:adivinhando ( )
  ;;9
  (setq escolha1 (list '(1 2 3 4 5 6 7) '(8 9 10 11 12 13 14) '(15 16 17 18 19 20 21)))
  (setq lista (list '(1 2 3 4 5 6 7) '(8 9 10 11 12 13 14) '(15 16 17 18 19 20 21)))
  (apply '+ lista)
  (setq nth_ 0)
  (setq escolha2
    
    (foreach i lista
      (setq list_org (list (nth nth_ lista)))
      ; (setq nth_ (1+ nth_))
    )
  )
  
)
