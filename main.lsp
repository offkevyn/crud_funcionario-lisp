(in-package :user)

(compile-file "debian/crud/Funcionario/funcionario.lsp")
(load "debian/crud/Funcionario/funcionario")

(compile-file "debian/crud/Dependente/dependente.lsp")
(load "debian/crud/Dependente/dependente")


(defun main ()
    (loop
        (terpri)(terpri)
        (princ "==============") (terpri) 
        (princ "--------------") (terpri) 
        (princ "1.. Funcionario") (terpri) 
        (princ "2.. Sair") (terpri) 
        (princ "Escolha uma opção acima: ")(terpri)
        (setq opCrud (read))

        (cond
            ((= opCrud 1)
                (mainFuncionario)
            )
            ((= opCrud 2)
                (princ "--------------") (terpri)
                (princ "     SAIR     ") (terpri)
                (princ "--------------") (terpri)
                (princ "Saindo........") (terpri)
                (return)
            )
            ((or (> opCrud 1) (< opCrud 1)) 
                (terpri)
                (princ "ERROR!!! Opção INVÁLIDA!!") (terpri)
            )
        )
    )

)

(defun selectOption ()
    (terpri)
    (princ "1.. Criar") (terpri)
    (princ "2.. Consultar") (terpri)
    (princ "3.. Atualizar") (terpri)
    (princ "4.. Deletar") (terpri)
    (princ "5.. Listar todos") (terpri)
    (princ "6.. Sair") (terpri)
    (princ "Escolha uma opção acima: ")
)