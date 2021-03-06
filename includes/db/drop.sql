# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases v6.1.0                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          novo bnaco.dez                                  #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2019-11-28 20:44                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #
ALTER TABLE `produtos` DROP FOREIGN KEY `tipo_produtos`;
ALTER TABLE `receita` DROP FOREIGN KEY `ingredientes_receita`;
ALTER TABLE `receita` DROP FOREIGN KEY `produtos_receita`;
ALTER TABLE `comentario` DROP FOREIGN KEY `usuario_comentario`;
ALTER TABLE `pedidos` DROP FOREIGN KEY `usuario_pedidos`;
ALTER TABLE `pedidos_produtos` DROP FOREIGN KEY `pedidos_pedidos_produtos`;
ALTER TABLE `pedidos_produtos` DROP FOREIGN KEY `produtos_pedidos_produtos`;
ALTER TABLE `mensagens` DROP FOREIGN KEY `usuario_mensagens`;

# ---------------------------------------------------------------------- #
# Drop table "pedidos_produtos"                                          #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #
ALTER TABLE `pedidos_produtos` MODIFY `ppp_codigo` INTEGER NOT NULL;

# Drop constraints #
ALTER TABLE `pedidos_produtos` DROP PRIMARY KEY;

# Drop table #
DROP TABLE `pedidos_produtos`;

# ---------------------------------------------------------------------- #
# Drop table "receita"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #
ALTER TABLE `receita` MODIFY `rec_codigo` INTEGER NOT NULL;

# Drop constraints #
ALTER TABLE `receita` DROP PRIMARY KEY;

# Drop table #
DROP TABLE `receita`;

# ---------------------------------------------------------------------- #
# Drop table "produtos"                                                  #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #
ALTER TABLE `produtos` MODIFY `pro_codigo` INTEGER NOT NULL;

# Drop constraints #
ALTER TABLE `produtos` DROP PRIMARY KEY;

# Drop table #
DROP TABLE `produtos`;

# ---------------------------------------------------------------------- #
# Drop table "mensagens"                                                 #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #
ALTER TABLE `mensagens` MODIFY `men_codigo` INTEGER NOT NULL;

# Drop constraints #
ALTER TABLE `mensagens` DROP PRIMARY KEY;

# Drop table #
DROP TABLE `mensagens`;

# ---------------------------------------------------------------------- #
# Drop table "tipo"                                                      #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #
ALTER TABLE `tipo` MODIFY `tip_codigo` INTEGER NOT NULL;

# Drop constraints #
ALTER TABLE `tipo` DROP PRIMARY KEY;

# Drop table #
DROP TABLE `tipo`;

# ---------------------------------------------------------------------- #
# Drop table "pedidos"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #
ALTER TABLE `pedidos` MODIFY `pp_codigo` INTEGER NOT NULL;

# Drop constraints #
ALTER TABLE `pedidos` DROP PRIMARY KEY;

# Drop table #
DROP TABLE `pedidos`;

# ---------------------------------------------------------------------- #
# Drop table "comentario"                                                #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #
ALTER TABLE `comentario` MODIFY `com_codigo` INTEGER NOT NULL;

# Drop constraints #
ALTER TABLE `comentario` DROP PRIMARY KEY;

# Drop table #
DROP TABLE `comentario`;

# ---------------------------------------------------------------------- #
# Drop table "ingredientes"                                              #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #
ALTER TABLE `ingredientes` MODIFY `igr_codigo` INTEGER NOT NULL;

# Drop constraints #
ALTER TABLE `ingredientes` DROP PRIMARY KEY;

# Drop table #
DROP TABLE `ingredientes`;

# ---------------------------------------------------------------------- #
# Drop table "usuario"                                                   #
# ---------------------------------------------------------------------- #

# Remove autoinc for PK drop #
ALTER TABLE `usuario` MODIFY `usu_codigo` INTEGER NOT NULL;

# Drop constraints #
ALTER TABLE `usuario` DROP PRIMARY KEY;

# Drop table #
DROP TABLE `usuario`;
