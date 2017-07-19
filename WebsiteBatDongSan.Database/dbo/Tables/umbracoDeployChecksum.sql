CREATE TABLE [dbo].[umbracoDeployChecksum] (
    [id]                INT              IDENTITY (1, 1) NOT NULL,
    [entityType]        NVARCHAR (32)    NOT NULL,
    [entityGuid]        UNIQUEIDENTIFIER NULL,
    [entityPath]        NVARCHAR (256)   NULL,
    [localChecksum]     NVARCHAR (32)    NOT NULL,
    [compositeChecksum] NVARCHAR (32)    NULL,
    CONSTRAINT [PK_umbracoDeployChecksum] PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoDeployChecksum]
    ON [dbo].[umbracoDeployChecksum]([entityType] ASC, [entityGuid] ASC, [entityPath] ASC);

