SELECT
    b.Id AS BeerId,
    b.Name AS BeerName,
    r.Name AS BrewerName,
    c.Category AS CategoryName,
    b.Price AS BeerPrice

FROM
    thebrewerydb.beers b
        LEFT JOIN thebrewerydb.brewers r ON b.BrewerId = r.Id
        INNER JOIN thebrewerydb.categories c on b.CategoryId = c.Id
WHERE r.Name LIKE 'Boon';


SELECT
    b.Id AS BierID,
    b.Name AS BierName,
    COALESCE(r.Name, 'Unknown') AS BrewerName,
    c.Category AS CategoryName,
    b.Price AS BierPrice
FROM
    thebrewerydb.beers b
        LEFT JOIN thebrewerydb.brewers r ON b.BrewerId = r.Id
        INNER JOIN thebrewerydb.categories c ON b.CategoryId = c.Id
WHERE
    COALESCE(r.Name, 'Unknown') = 'Boon';
