.class Lcom/htc/album/picker/PickerFolderCreateAdapter$FolderCreateCollection;
.super Lcom/htc/album/TabPluginDevice/AlbumCollection;
.source "PickerFolderCreateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/picker/PickerFolderCreateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FolderCreateCollection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/picker/PickerFolderCreateAdapter;


# direct methods
.method public constructor <init>(Lcom/htc/album/picker/PickerFolderCreateAdapter;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/htc/album/picker/PickerFolderCreateAdapter$FolderCreateCollection;->this$0:Lcom/htc/album/picker/PickerFolderCreateAdapter;

    .line 68
    const-string v0, "com.htc.HTCAlbum.FOLDER_CREATE"

    const-string v1, "com.htc.HTCAlbum.FOLDER_CREATE"

    const-string v2, "com.htc.HTCAlbum.FOLDER_CREATE"

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/htc/album/TabPluginDevice/AlbumCollection;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method


# virtual methods
.method public getDateModified()J
    .locals 2

    .prologue
    .line 131
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDateTaken()J
    .locals 2

    .prologue
    .line 135
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDegreesRotated()I
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageHeight()I
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayImageIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageResId()I
    .locals 1

    .prologue
    .line 115
    const v0, 0x208009e

    return v0
.end method

.method public getDisplayImageSourceType()I
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x4

    return v0
.end method

.method public getDisplayImageUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayImageWidth()I
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public getMediaMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 127
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public hasSubList()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public isVideo()Z
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method protected setProperties(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "givenName"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mContext:Landroid/content/Context;

    const v1, 0x2040290

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/modules/collection/Collection;->mDisplayName:Ljava/lang/String;

    .line 78
    const/16 v0, 0xff

    iput v0, p0, Lcom/htc/album/modules/collection/Collection;->mSupportedMediaTypes:I

    .line 79
    return-void
.end method
