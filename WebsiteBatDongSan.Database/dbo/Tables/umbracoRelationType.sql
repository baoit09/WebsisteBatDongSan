CREATE TABLE [dbo].[umbracoRelationType] (
    [id]               INT              IDENTITY (1, 1) NOT NULL,
    [dual]             BIT              NOT NULL,
    [parentObjectType] UNIQUEIDENTIFIER NOT NULL,
    [childObjectType]  UNIQUEIDENTIFIER NOT NULL,
    [name]             NVARCHAR (255)   NOT NULL,
    [alias]            NVARCHAR (100)   NULL,
    CONSTRAINT [PK_umbracoRelationType] PRIMARY KEY CLUSTERED ([id] ASC)
);

