SELECT
    b.Id AS BeerId,
    b.Name AS BeerName,
    b.BrewerId,
    c.Category AS CategoryName,
    b.Price,
    b.Stock,
    b.Alcohol,
    b.Version,
    b.Image
FROM
    thebrewerydb.beers b
        INNER JOIN thebrewerydb.categories c ON b.CategoryId = c.Id
WHERE
    (c.Category LIKE 'Alcoholvrij' OR c.Category LIKE 'Light')
  AND (b.Name LIKE '%J%' OR b.Name LIKE 'St%')
  AND b.Alcohol <= 2;
