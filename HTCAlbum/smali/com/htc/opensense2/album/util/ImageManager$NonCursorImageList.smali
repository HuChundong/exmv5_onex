.class Lcom/htc/opensense2/album/util/ImageManager$NonCursorImageList;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Lcom/htc/opensense2/album/util/ImageManager$IImageList;
.implements Lcom/htc/sunnyCore/IMediaList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/util/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NonCursorImageList"
.end annotation


# instance fields
.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/opensense2/album/util/ImageManager;


# direct methods
.method public constructor <init>(Lcom/htc/opensense2/album/util/ImageManager;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 11091
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    iput-object p1, p0, Lcom/htc/opensense2/album/util/ImageManager$NonCursorImageList;->this$0:Lcom/htc/opensense2/album/util/ImageManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11092
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$NonCursorImageList;->mList:Ljava/util/ArrayList;

    .line 11093
    return-void
.end method


# virtual methods
.method public closeCursor()V
    .locals 0

    .prologue
    .line 11132
    return-void
.end method

.method public commitChanges()V
    .locals 0

    .prologue
    .line 11139
    return-void
.end method

.method public deactivate()V
    .locals 0

    .prologue
    .line 11128
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 11096
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$NonCursorImageList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 1
    .parameter "i"

    .prologue
    .line 11100
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$NonCursorImageList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    return-object v0
.end method

.method public getImageForFilePath(Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 3
    .parameter "filePath"

    .prologue
    .line 11112
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$NonCursorImageList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 11113
    .local v1, img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 11116
    .end local v1           #img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getImageForUri(Landroid/net/Uri;)Lcom/htc/opensense2/album/util/ImageManager$IImage;
    .locals 3
    .parameter "uri"

    .prologue
    .line 11120
    iget-object v2, p0, Lcom/htc/opensense2/album/util/ImageManager$NonCursorImageList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 11121
    .local v1, img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    invoke-interface {v1}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 11124
    .end local v1           #img:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getImages(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 11104
    .local p1, outList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/util/ImageManager$IImage;>;"
    if-nez p1, :cond_0

    .line 11109
    :goto_0
    return-void

    .line 11108
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/util/ImageManager$NonCursorImageList;->mList:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public getItem(I)Lcom/htc/sunnyCore/IMediaData;
    .locals 2
    .parameter "itemIndex"

    .prologue
    .line 11147
    iget-object v1, p0, Lcom/htc/opensense2/album/util/ImageManager$NonCursorImageList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/util/ImageManager$IImage;

    .line 11148
    .local v0, item:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    instance-of v1, v0, Lcom/htc/sunnyCore/IMediaData;

    if-eqz v1, :cond_0

    .line 11150
    check-cast v0, Lcom/htc/sunnyCore/IMediaData;

    .line 11154
    .end local v0           #item:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :goto_0
    return-object v0

    .restart local v0       #item:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReleased()Z
    .locals 1

    .prologue
    .line 11135
    const/4 v0, 0x0

    return v0
.end method

.method public startRequery()Z
    .locals 1

    .prologue
    .line 11142
    const/4 v0, 0x0

    return v0
.end method
