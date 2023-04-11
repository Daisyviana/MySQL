CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  descricao VARCHAR(255),
  PRIMARY KEY (id)
);

CREATE TABLE tb_cursos (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  descricao VARCHAR(255),
  valor DECIMAL(10, 2),
  carga_horaria INT,
  categoria_id INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
  ('Programação', 'Cursos de programação em diversas linguagens'),
  ('Design', 'Cursos de design gráfico e web'),
  ('Marketing', 'Cursos de marketing digital e vendas'),
  ('Idiomas', 'Cursos de idiomas estrangeiros'),
  ('Negócios', 'Cursos de empreendedorismo e administração');

INSERT INTO tb_cursos (nome, descricao, valor, carga_horaria, categoria_id) VALUES
  ('Curso de Python', 'Aprenda a programar em Python do zero', 899.90, 40, 1),
  ('Curso de Web Design', 'Aprenda a criar websites responsivos', 750.00, 30, 2),
  ('Curso de Marketing Digital', 'Aprenda a criar campanhas de marketing online', 1100.00, 50, 3),
  ('Curso de Inglês', 'Aprenda a falar inglês fluentemente', 1500.00, 80, 4),
  ('Curso de Empreendedorismo', 'Aprenda a criar e gerenciar um negócio', 499.90, 20, 5),
  ('Curso de Java', 'Aprenda a programar em Java orientado a objetos', 799.90, 35, 1),
  ('Curso de Design Gráfico', 'Aprenda a criar peças gráficas e layouts', 600.00, 25, 2),
  ('Curso de Vendas', 'Aprenda a vender produtos e serviços pela internet', 899.90, 40, 3);

SELECT * FROM tb_cursos WHERE valor > 500.00;
SELECT * FROM tb_cursos WHERE valor BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_cursos WHERE nome LIKE '%J%';

SELECT * FROM tb_cursos
INNER JOIN tb_categorias ON tb_cursos.categoria_id = tb_categorias.id;

SELECT * FROM tb_cursos
INNER JOIN tb_categorias on tb_cursos.categoria_id = tb_categorias.id
WHERE tb_categorias.id = 1;



