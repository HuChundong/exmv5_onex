.class public interface abstract Lcom/android/camera/IResolutionProvider;
.super Ljava/lang/Object;
.source "IResolutionProvider.java"


# virtual methods
.method public abstract getPreviewSize(Lcom/android/camera/CameraType;Lcom/android/camera/Resolution;)Lcom/android/camera/imaging/Size;
.end method

.method public abstract getResolution(Lcom/android/camera/CameraType;Ljava/util/List;Lcom/android/camera/Resolution;)Lcom/android/camera/Resolution;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/CameraType;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/Resolution;",
            ">;",
            "Lcom/android/camera/Resolution;",
            ")",
            "Lcom/android/camera/Resolution;"
        }
    .end annotation
.end method

.method public abstract getResolutionList(Lcom/android/camera/CameraType;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/CameraType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/Resolution;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getResolutionSettingsKey(Lcom/android/camera/CameraType;)Ljava/lang/String;
.end method

.method public abstract resetResolutions()V
.end method
