create database db_estoque;
use db_estoque;
create table tb_marcas(
id bigint(5) auto_increment,
nome varchar(20) not null,
ativo boolean,
primary key(id)
);

insert into tb_marcas(nome,ativo)
values ('nike', true);

select * from tb_marcas;

insert into tb_marcas(nome,ativo)
values ('fatal Surf', false);

update tb_marcas set nome = 'Fatal Surf', ativo = true
where id = 3;

update tb_marcas set nome = 'Nike' where id =1;
update tb_marcas set nome = 'Adiddas' where id =2;

insert into tb_marcas (nome,ativo)
values ('Fila',true),
 ('Gucci',true),
 ('Oakley',true);
 
 create table tb_produtos(
 id bigint auto_increment,
 nome varchar (30) not null,
 preco decimal (10,2),
 marca_id bigint not null,
 primary key (id),
 foreign key (marca_id) references tb_marcas (id) 
 );
  insert into tb_produtos(nome, preco, marca_id)
  values 
  ('Camisa', 22.99,1),
  ('Bone', 25.99,2),
  ('Calca', 56.88,3);
  
  select * from tb_produtos
  inner join tb_marcas on tb_marcas.id = tb_produtos.marca_id;
  
  select tb_produtos.nome, tb_produtos.preco, tb_marcas.nome from tb_produtos
  inner join tb_marcas on tb_marcas.id = tb_produtos.marca_id;
 
 
 




