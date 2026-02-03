alter table clientes
add Criado_em datetime default current_timestamp,
add atualizado_em  datetime default current_timestamp on update current_timestamp;