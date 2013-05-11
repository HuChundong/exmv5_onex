.class public interface abstract Lcom/android/camera/IVideoResolutionProvider;
.super Ljava/lang/Object;
.source "IVideoResolutionProvider.java"

# interfaces
.implements Lcom/android/camera/IResolutionProvider;


# virtual methods
.method public abstract getSlowMotionResolution(Lcom/android/camera/CameraType;Ljava/util/List;)Lcom/android/camera/Resolution;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/CameraType;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/Resolution;",
            ">;)",
            "Lcom/android/camera/Resolution;"
        }
    .end annotation
.end method
