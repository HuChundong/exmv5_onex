.class public final Lcom/android/camera/io/MediaFileWriterBuilder;
.super Lcom/android/camera/component/CameraThreadComponentBuilder;
.source "MediaFileWriterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/component/CameraThreadComponentBuilder",
        "<",
        "Lcom/android/camera/io/MediaFileWriter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Media File Writer"

    invoke-direct {p0, v0}, Lcom/android/camera/component/CameraThreadComponentBuilder;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createComponent(Lcom/android/camera/CameraThread;)Lcom/android/camera/component/Component;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/camera/io/MediaFileWriterBuilder;->createComponent(Lcom/android/camera/CameraThread;)Lcom/android/camera/io/MediaFileWriter;

    move-result-object v0

    return-object v0
.end method

.method public createComponent(Lcom/android/camera/CameraThread;)Lcom/android/camera/io/MediaFileWriter;
    .locals 1

    new-instance v0, Lcom/android/camera/io/MediaFileWriter;

    invoke-direct {v0, p1}, Lcom/android/camera/io/MediaFileWriter;-><init>(Lcom/android/camera/CameraThread;)V

    return-object v0
.end method
