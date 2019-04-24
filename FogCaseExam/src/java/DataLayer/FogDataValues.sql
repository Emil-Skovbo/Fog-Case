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
#REname table arearoof to area;