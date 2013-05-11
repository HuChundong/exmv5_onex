.class final Lcom/android/camera/component/AudioManagerBuilder;
.super Ljava/lang/Object;
.source "AudioManagerBuilder.java"

# interfaces
.implements Lcom/android/camera/component/IComponentBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/component/IComponentBuilder",
        "<",
        "Lcom/android/camera/component/AudioManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs createComponent([Ljava/lang/Object;)Lcom/android/camera/component/AudioManager;
    .locals 4

    array-length v1, p1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    aget-object v0, p1, v1

    instance-of v1, v0, Lcom/android/camera/HTCCamera;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/android/camera/component/AudioManager;

    move-object v1, v0

    check-cast v1, Lcom/android/camera/HTCCamera;

    check-cast v0, Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/android/camera/component/AudioManager;-><init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;)V

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    instance-of v1, v0, Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_1

    new-instance v2, Lcom/android/camera/component/AudioManager;

    move-object v1, v0

    check-cast v1, Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    check-cast v0, Lcom/android/camera/CameraThread;

    invoke-direct {v2, v1, v0}, Lcom/android/camera/component/AudioManager;-><init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;)V

    move-object v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createComponent([Ljava/lang/Object;)Lcom/android/camera/component/Component;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/camera/component/AudioManagerBuilder;->createComponent([Ljava/lang/Object;)Lcom/android/camera/component/AudioManager;

    move-result-object v0

    return-object v0
.end method

.method public getComponentCategory()Lcom/android/camera/component/ComponentCategory;
    .locals 1

    sget-object v0, Lcom/android/camera/component/ComponentCategory;->Realtime:Lcom/android/camera/component/ComponentCategory;

    return-object v0
.end method

.method public getComponentName()Ljava/lang/String;
    .locals 1

    const-string v0, "Audio Manager"

    return-object v0
.end method

.method public varargs isSupported([Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
