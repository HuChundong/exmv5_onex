.class public interface abstract Lcom/htc/opensense2/album/SocialNetworkManager/IOSImageProvider;
.super Ljava/lang/Object;
.source "IOSImageProvider.java"


# virtual methods
.method public abstract onOSRequestAlbumCoverUri(ILjava/lang/String;)I
.end method

.method public abstract onOSRequestPhotoThumbnailUri(ILjava/lang/String;)I
.end method

.method public abstract onOSRequestPhotoUri(ILjava/lang/String;)I
.end method

.method public abstract onOSSyncAlbumCoverUri(Landroid/net/Uri;Landroid/os/Bundle;)V
.end method

.method public abstract onOSSyncPhotoThumbnailUri(Landroid/net/Uri;Landroid/os/Bundle;)V
.end method

.method public abstract onOSSyncPhotoUri(Landroid/net/Uri;Landroid/os/Bundle;)V
.end method
