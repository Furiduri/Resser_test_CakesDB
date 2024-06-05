# Práctica Cakes DB

La base de datos se estructuró para ser usada en **SQL Server**.

## Puntos a considerar

- Las **llaves primarias** se recomiendan manejar siempre como valor `INT` , ya que ayuda en el rendimiento de la indexado de la base de datos.

- En la tabla `tbl_reserved_sprinkles`, por estándar fue requerido agregar una **llave primaria**.

- El campo `cake`, se genera de manera computable, para obtener la nomenclatura que se desea `'cake'+[pk_id]`.

## Docker

Para levantar una instancia de SQL Server en Docker se deden ejecutar los siguientes comandos.

- Descargamos la imagen.
  ```bash
  docker pull mcr.microsoft.com/mssql/server:2022-latest
  ```
- Creamos el contenedor, cambiando `{password}`, por una contraseña a usar.
  ```bash
  docker run -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD={password}" -p 1433:1433 -d --name sqlserver mcr.microsoft.com/mssql/server:2022-latest
  ```
- Nos conectamos al servidor `localhost:1433`, mediante SQL Server Authentication, **Usuario**: `sa` y **Pasword**: `{password}`

- Si nos da error de conexión, intente ingresar con la opción "Certificado de servidor de confianza" `✅ Trust server certificate`.

## Instrucciones

1.  Cree una Base de datos en algún servidor SQL Server 2018 o superior _(se recomienda el nombre `CakesDB`)_, se puede hacer uso de SQL Server Management Studio como herramienta visual de gestión de la base de datos.

2.  Abra el Script `DB_schema_and_data.sql` y execute.

3.  Abra el Script `Select_consumed_cakes.sql` y ejecuta, para obtener la lista de `cakes`, que cumplen los requisitos solicitados.

    - El merengue (`icing`), asociado al pastel, no se encuentra consumido (`consumed = 0`).
    - Las 3 chispas (`sprinkles`), no se encuentran consumidas.
    - Solo retorna el campo `cake` de los pasteles que cumplan los criterios anteriores.

### Tabla de datos

|   cake    | icing_consumed | sprinkle | sprinkle_consumed |
| :-------: | :------------: | :------: | :---------------: |
| **cake1** |      ✅ 0      |   azul   |       ✅ 0        |
| **cake1** |      ✅ 0      | amarillo |       ✅ 0        |
| **cake1** |      ✅ 0      |   rosa   |       ✅ 0        |
|   cake2   |      ❌ 1      | amarillo |       ✅ 0        |
|   cake2   |      ❌ 1      |   rosa   |       ✅ 0        |
|   cake2   |      ❌ 1      |   rojo   |       ✅ 0        |
| **cake3** |      ❌ 1      |   azul   |       ✅ 0        |
| **cake3** |      ❌ 1      |   rojo   |       ✅ 0        |
| **cake3** |      ❌ 1      |  verder  |       ❌ 1        |
|   cake4   |      ✅ 0      |  verder  |       ❌ 1        |
|   cake4   |      ✅ 0      | magenta  |       ❌ 1        |
|   cake4   |      ✅ 0      |   rojo   |       ✅ 0        |
| **cake5** |      ✅ 0      |   azul   |       ✅ 0        |
| **cake5** |      ✅ 0      | magenta  |       ❌ 1        |
| **cake5** |      ✅ 0      |  verder  |       ❌ 1        |
|   cake6   |      ❌ 1      |   azul   |       ✅ 0        |
|   cake6   |      ❌ 1      |   rojo   |       ✅ 0        |
|   cake6   |      ❌ 1      | amarillo |       ✅ 0        |
|   cake7   |      ✅ 0      |   azul   |       ✅ 0        |
|   cake7   |      ✅ 0      |   rojo   |       ✅ 0        |
|   cake7   |      ✅ 0      | amarillo |       ✅ 0        |
