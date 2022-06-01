CREATE TABLE usuarios(
id SERIAL PRIMARY KEY, 
nombre VARCHAR(50),
balance FLOAT CHECK (balance >= 0)
);

CREATE TABLE transferencias(
id SERIAL PRIMARY KEY, 
emisor INT, receptor
INT, monto FLOAT, 
fecha TIMESTAMP, 
FOREIGN KEY (emisor) references usuarios(id), 
FOREIGN KEY (receptor) REFERENCES usuarios(id)
);

insert into usuarios (nombre,balance) values ('mari', 100);

insert into transferencias (emisor, receptor,monto) values (1,3,100);
insert into transferencias (emisor, receptor,monto, fecha) values (1,3,1000, NOW());
