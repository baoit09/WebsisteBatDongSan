CREATE TABLE [dbo].[cmsStylesheetProperty] (
    [nodeId]                   INT            NOT NULL,
    [stylesheetPropertyEditor] BIT            NULL,
    [stylesheetPropertyAlias]  NVARCHAR (50)  NULL,
    [stylesheetPropertyValue]  NVARCHAR (400) NULL,
    CONSTRAINT [PK_cmsStylesheetProperty] PRIMARY KEY CLUSTERED ([nodeId] ASC)
);

