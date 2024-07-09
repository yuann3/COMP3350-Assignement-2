-- made by yiyuan li --


-- create vw
CREATE VIEW vw_SalesPerformance AS
SELECT 
    s.[Sale Key],
    s.[Invoice Date Key],
    d.[Calendar Year],
    d.[Calendar Month Number],
    d.[Calendar Month Label],
    s.[Customer Key],
    c.[Customer],
    c.[Buying Group],
    c.[Category],
    s.[City Key],
    ci.[City],
    ci.[State Province],
    ci.[Country],
    s.[Stock Item Key],
    si.[Stock Item],
    si.[Color],
    s.[Quantity],
    s.[Unit Price],
    s.[Tax Rate],
    s.[Total Excluding Tax],
    s.[Tax Amount],
    s.[Total Including Tax]
FROM Fact.Sale s
JOIN Dimension.Date d ON s.[Invoice Date Key] = d.[Date]
JOIN Dimension.Customer c ON s.[Customer Key] = c.[Customer Key]
JOIN Dimension.City ci ON s.[City Key] = ci.[City Key]
JOIN Dimension.[Stock Item] si ON s.[Stock Item Key] = si.[Stock Item Key]
