select * from materials;
# the price values is for a meter 
#insert into materials (materialPrice, materialName) values (100, "bøg");

insert into materials (materialPrice, materialName) values (120, "birk");
insert into materials (materialPrice, materialName) values (150, "eg");
insert into materials (materialPrice, materialName) values (150, "ask");
insert into materials (materialPrice, materialName) values (90, "fyr");

select * from roofmaterial;

insert into roofmaterial (roofmaterialname, roofmaterialprice) values ("aluminium", 200);
insert into roofmaterial (roofmaterialname, roofmaterialprice) values ("tagsten", 175);
insert into roofmaterial (roofmaterialname, roofmaterialprice) values ("plast", 100);

select * from roofmaterial;

select * from arearoof;

insert into roof (roofmaterialFK, areaFK) values ();
select * from arearoof;
insert into arearoof (width,length,heigth,degree) values (20,20,15,40);

select * from carport;
insert into carport (width, length, heigth, materialFK) values (20,20,40,2);


select * from shed;
insert into shed (width,length, heigth, materialFK) values(15,15,35,1);
#REname table arearoof to area;

select * from roof;
insert into roof (roofmaterialFK, areaFK) values (1,1);

select * from orders;
insert into orders (carportFK, shedFK, roofFK) values (1,1,1);
