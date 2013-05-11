.class public final Lcom/android/camera/component/PowerWarningUIBuilder;
.super Lcom/android/camera/component/UIComponentBuilder;
.source "PowerWarningUIBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/component/UIComponentBuilder",
        "<",
        "Lcom/android/camera/component/PowerWarningUI;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 2

    const-string v0, "PowerWarning UI"

    sget-object v1, Lcom/android/camera/component/ComponentCategory;->Realtime:Lcom/android/camera/component/ComponentCategory;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/component/UIComponentBuilder;-><init>(Ljava/lang/String;Lcom/android/camera/component/ComponentCategory;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/Component;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/camera/component/PowerWarningUIBuilder;->createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/PowerWarningUI;

    move-result-object v0

    return-object v0
.end method

.method public createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/PowerWarningUI;
    .locals 1

    new-instance v0, Lcom/android/camera/component/PowerWarningUI;

    invoke-direct {v0, p1}, Lcom/android/camera/component/PowerWarningUI;-><init>(Lcom/android/camera/HTCCamera;)V

    return-object v0
.end method

.method protected isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    invoke-static {p1}, Lcom/android/camera/component/PowerWarningController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v0

    return v0
.end method
