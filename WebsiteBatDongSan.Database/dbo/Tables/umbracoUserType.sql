CREATE TABLE [dbo].[umbracoUserType] (
    [id]                         INT            IDENTITY (1, 1) NOT NULL,
    [userTypeAlias]              NVARCHAR (50)  NULL,
    [userTypeName]               NVARCHAR (255) NOT NULL,
    [userTypeDefaultPermissions] NVARCHAR (50)  NULL,
    CONSTRAINT [PK_umbracoUserType] PRIMARY KEY CLUSTERED ([id] ASC)
);

