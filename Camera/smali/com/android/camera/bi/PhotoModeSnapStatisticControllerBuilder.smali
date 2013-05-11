.class public Lcom/android/camera/bi/PhotoModeSnapStatisticControllerBuilder;
.super Lcom/android/camera/component/UIComponentBuilder;
.source "PhotoModeSnapStatisticControllerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/component/UIComponentBuilder",
        "<",
        "Lcom/android/camera/bi/PhotoModeSnapStatisticController;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "PhotoMode Snap Statistic Controller"

    sget-object v1, Lcom/android/camera/component/ComponentCategory;->Normal:Lcom/android/camera/component/ComponentCategory;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/component/UIComponentBuilder;-><init>(Ljava/lang/String;Lcom/android/camera/component/ComponentCategory;)V

    return-void
.end method


# virtual methods
.method public createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/bi/PhotoModeSnapStatisticController;
    .locals 1

    new-instance v0, Lcom/android/camera/bi/PhotoModeSnapStatisticController;

    invoke-direct {v0, p1}, Lcom/android/camera/bi/PhotoModeSnapStatisticController;-><init>(Lcom/android/camera/HTCCamera;)V

    return-object v0
.end method

.method public bridge synthetic createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/Component;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/camera/bi/PhotoModeSnapStatisticControllerBuilder;->createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/bi/PhotoModeSnapStatisticController;

    move-result-object v0

    return-object v0
.end method
