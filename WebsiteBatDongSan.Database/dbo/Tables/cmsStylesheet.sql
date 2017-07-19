CREATE TABLE [dbo].[cmsStylesheet] (
    [nodeId]   INT            NOT NULL,
    [filename] NVARCHAR (100) NOT NULL,
    [content]  NTEXT          NULL,
    CONSTRAINT [PK_cmsStylesheet] PRIMARY KEY CLUSTERED ([nodeId] ASC),
    CONSTRAINT [FK_cmsStylesheet_umbracoNode_id] FOREIGN KEY ([nodeId]) REFERENCES [dbo].[umbracoNode] ([id])
);

