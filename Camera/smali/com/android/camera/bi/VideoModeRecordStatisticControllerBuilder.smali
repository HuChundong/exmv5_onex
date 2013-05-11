.class public Lcom/android/camera/bi/VideoModeRecordStatisticControllerBuilder;
.super Lcom/android/camera/component/UIComponentBuilder;
.source "VideoModeRecordStatisticControllerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/component/UIComponentBuilder",
        "<",
        "Lcom/android/camera/bi/VideoModeRecordStatisticController;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "VideoMode Record Statistic Controller"

    sget-object v1, Lcom/android/camera/component/ComponentCategory;->Normal:Lcom/android/camera/component/ComponentCategory;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/component/UIComponentBuilder;-><init>(Ljava/lang/String;Lcom/android/camera/component/ComponentCategory;)V

    return-void
.end method


# virtual methods
.method public createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/bi/VideoModeRecordStatisticController;
    .locals 1

    new-instance v0, Lcom/android/camera/bi/VideoModeRecordStatisticController;

    invoke-direct {v0, p1}, Lcom/android/camera/bi/VideoModeRecordStatisticController;-><init>(Lcom/android/camera/HTCCamera;)V

    return-object v0
.end method

.method public bridge synthetic createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/Component;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/camera/bi/VideoModeRecordStatisticControllerBuilder;->createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/bi/VideoModeRecordStatisticController;

    move-result-object v0

    return-object v0
.end method
