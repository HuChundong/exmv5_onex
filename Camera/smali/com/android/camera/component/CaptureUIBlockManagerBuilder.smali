.class final Lcom/android/camera/component/CaptureUIBlockManagerBuilder;
.super Lcom/android/camera/component/UIComponentBuilder;
.source "CaptureUIBlockManagerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/component/UIComponentBuilder",
        "<",
        "Lcom/android/camera/component/CaptureUIBlockManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    const-string v0, "Capture-UI Block Manager"

    sget-object v1, Lcom/android/camera/component/ComponentCategory;->Realtime:Lcom/android/camera/component/ComponentCategory;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/component/UIComponentBuilder;-><init>(Ljava/lang/String;Lcom/android/camera/component/ComponentCategory;)V

    return-void
.end method


# virtual methods
.method public createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/CaptureUIBlockManager;
    .locals 1

    new-instance v0, Lcom/android/camera/component/CaptureUIBlockManager;

    invoke-direct {v0, p1}, Lcom/android/camera/component/CaptureUIBlockManager;-><init>(Lcom/android/camera/HTCCamera;)V

    return-object v0
.end method

.method public bridge synthetic createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/Component;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/camera/component/CaptureUIBlockManagerBuilder;->createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/CaptureUIBlockManager;

    move-result-object v0

    return-object v0
.end method
