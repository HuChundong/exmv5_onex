.class public interface abstract Lcom/htc/opensense2/album/util/ImageManager$IImageList;
.super Ljava/lang/Object;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/util/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IImageList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense2/album/util/ImageManager$IImageList$ThumbCheckCallback;
    }
.end annotation


# virtual methods
.method public abstract closeCursor()V
.end method

.method public abstract commitChanges()V
.end method

.method public abstract deactivate()V
.end method

.method public abstract getCount()I
.end method

.method public abstract getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;
.end method

.method public abstract getImageForFilePath(Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImage;
.end method

.method public abstract getImageForUri(Landroid/net/Uri;)Lcom/htc/opensense2/album/util/ImageManager$IImage;
.end method

.method public abstract getImages(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/util/ImageManager$IImage;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract isReleased()Z
.end method

.method public abstract startRequery()Z
.end method
