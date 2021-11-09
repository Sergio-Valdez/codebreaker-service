create table game (game_id UUID not null, created timestamp not null, external_key UUID not null, length integer not null, pool varchar(255) not null, text varchar(20) not null, user_id UUID not null, primary key (game_id));
create table user (user_id UUID not null, created timestamp not null, display_name varchar(100) not null, external_key UUID not null, oauth_key varchar(30) not null, primary key (user_id));
alter table user add constraint UK_pnrrew2o71m330w38p0ypwjvn unique (display_name);
alter table user add constraint UK_qf22mfs3dtju120ciyokuyrqf unique (external_key);
alter table user add constraint UK_rw9u8m4te7vpjhe2wuvh9imsr unique (oauth_key);
alter table game add constraint FKefqw7nsur06wyld1gavn3ic6b foreign key (user_id) references user;
create table game (game_id UUID not null, created timestamp not null, external_key UUID not null, length integer not null, pool varchar(255) not null, text varchar(20) not null, user_id UUID not null, primary key (game_id))
create table user (user_id UUID not null, created timestamp not null, display_name varchar(100) not null, external_key UUID not null, oauth_key varchar(30) not null, primary key (user_id))
alter table user add constraint UK_pnrrew2o71m330w38p0ypwjvn unique (display_name)
alter table user add constraint UK_qf22mfs3dtju120ciyokuyrqf unique (external_key)
alter table user add constraint UK_rw9u8m4te7vpjhe2wuvh9imsr unique (oauth_key)
alter table game add constraint FKefqw7nsur06wyld1gavn3ic6b foreign key (user_id) references user
