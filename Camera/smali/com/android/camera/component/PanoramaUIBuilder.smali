.class public final Lcom/android/camera/component/PanoramaUIBuilder;
.super Lcom/android/camera/component/UIComponentBuilder;
.source "PanoramaUIBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/component/UIComponentBuilder",
        "<",
        "Lcom/android/camera/component/PanoramaUI;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 2

    const-string v0, "Panorama UI"

    sget-object v1, Lcom/android/camera/component/ComponentCategory;->OnDemand:Lcom/android/camera/component/ComponentCategory;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/component/UIComponentBuilder;-><init>(Ljava/lang/String;Lcom/android/camera/component/ComponentCategory;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/Component;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/camera/component/PanoramaUIBuilder;->createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/PanoramaUI;

    move-result-object v0

    return-object v0
.end method

.method public createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/PanoramaUI;
    .locals 1

    new-instance v0, Lcom/android/camera/component/PanoramaUI;

    invoke-direct {v0, p1}, Lcom/android/camera/component/PanoramaUI;-><init>(Lcom/android/camera/HTCCamera;)V

    return-object v0
.end method

.method protected isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/android/camera/component/PanoramaController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v0

    goto :goto_0
.end method
