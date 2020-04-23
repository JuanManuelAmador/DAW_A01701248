BULK INSERT trabajoclase.[Materiales]
  FROM 'e:\wwroot\rcortese\materiales.csv'
  WITH
  (
    CODEPAGE = 'ACP',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = ' '
  )

BULK INSERT trabajoclase.[Proyectos]
  FROM 'e:\wwroot\rcortese\Proyectos.csv'
  WITH
  (
    CODEPAGE = 'ACP',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = ' '
  )

BULK INSERT trabajoclase.[Proveedores]
  FROM 'e:\wwroot\rcortese\Proveedores.csv'
  WITH
  (
    CODEPAGE = 'ACP',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = ' '
  )

SET DATEFORMAT dmy -- especificar formato de la fecha

BULK INSERT trabajoclase.[Entregan]
  FROM 'e:\wwroot\rcortese\Entregan.csv'
  WITH
  (
    CODEPAGE = 'ACP',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = ' '
  )
