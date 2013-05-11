.class public final Lcom/android/camera/component/BIControllerBuilder;
.super Lcom/android/camera/component/UIComponentBuilder;
.source "BIControllerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/component/UIComponentBuilder",
        "<",
        "Lcom/android/camera/component/BIController;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 2

    const-string v0, "BI Controller"

    sget-object v1, Lcom/android/camera/component/ComponentCategory;->Normal:Lcom/android/camera/component/ComponentCategory;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/component/UIComponentBuilder;-><init>(Ljava/lang/String;Lcom/android/camera/component/ComponentCategory;)V

    return-void
.end method


# virtual methods
.method public createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/BIController;
    .locals 1

    new-instance v0, Lcom/android/camera/component/BIController;

    invoke-direct {v0, p1}, Lcom/android/camera/component/BIController;-><init>(Lcom/android/camera/HTCCamera;)V

    return-object v0
.end method

.method public bridge synthetic createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/Component;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/camera/component/BIControllerBuilder;->createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/BIController;

    move-result-object v0

    return-object v0
.end method

.method protected isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
