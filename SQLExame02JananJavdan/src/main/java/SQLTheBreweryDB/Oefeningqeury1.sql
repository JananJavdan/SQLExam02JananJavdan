-- eerste oefening
SELECT
    b.Id,
    b.Name AS Beer,
    r.Name AS Brewery,
    c.Category AS Category,
    b.Price,
    b.Stock,
    b.Alcohol,
    b.Version,
    b.Image
FROM
    thebrewerydb.beers b
        INNER JOIN thebrewerydb.brewers r ON b.BrewerId = r.Id
        INNER JOIN thebrewerydb.categories c ON b.CategoryId = c.Id;



