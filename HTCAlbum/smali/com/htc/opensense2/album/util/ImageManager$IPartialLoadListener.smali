.class public interface abstract Lcom/htc/opensense2/album/util/ImageManager$IPartialLoadListener;
.super Ljava/lang/Object;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense2/album/util/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IPartialLoadListener"
.end annotation


# static fields
.field public static final KEY_COUNT_IMAGE:Ljava/lang/String; = "key_count_image"

.field public static final KEY_COUNT_VIDEO:Ljava/lang/String; = "key_count_video"

.field public static final PARTIAL_LOADING_CRITIRIA:I = 0x65

.field public static final PARTIAL_LOADING_LIMITATION:I = 0x32


# virtual methods
.method public abstract onPartialListBuilt(Lcom/htc/opensense2/album/util/ImageManager$IImageList;)V
.end method

.method public abstract onPartialListBuilt(Lcom/htc/opensense2/album/util/ImageManager$IImageList;II)V
.end method
