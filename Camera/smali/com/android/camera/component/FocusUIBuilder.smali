.class public final Lcom/android/camera/component/FocusUIBuilder;
.super Lcom/android/camera/component/UIComponentBuilder;
.source "FocusUIBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/component/UIComponentBuilder",
        "<",
        "Lcom/android/camera/component/FocusUI;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 2

    const-string v0, "FocusUI UI"

    sget-object v1, Lcom/android/camera/component/ComponentCategory;->Normal:Lcom/android/camera/component/ComponentCategory;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/component/UIComponentBuilder;-><init>(Ljava/lang/String;Lcom/android/camera/component/ComponentCategory;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/Component;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/camera/component/FocusUIBuilder;->createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/FocusUI;

    move-result-object v0

    return-object v0
.end method

.method public createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/FocusUI;
    .locals 1

    new-instance v0, Lcom/android/camera/component/FocusUI;

    invoke-direct {v0, p1}, Lcom/android/camera/component/FocusUI;-><init>(Lcom/android/camera/HTCCamera;)V

    return-object v0
.end method

.method protected isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSensorFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->hasAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
