CREATE TABLE [dbo].[product1] (
    [id]               INT           IDENTITY (1, 1) NOT NULL,
    [product_name]     VARCHAR (50)  NULL,
    [product_desc]     VARCHAR (MAX) NULL,
    [product_price]    INT           NULL,
    [product_qty]      INT           NULL,
    [product_images]   VARCHAR (MAX) NULL,
    [product_category] VARCHAR (50)  NULL,
    CONSTRAINT [PK_product1] PRIMARY KEY CLUSTERED ([id] ASC)
);

