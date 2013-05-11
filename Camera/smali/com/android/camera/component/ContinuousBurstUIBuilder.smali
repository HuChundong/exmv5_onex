.class public final Lcom/android/camera/component/ContinuousBurstUIBuilder;
.super Lcom/android/camera/component/UIComponentBuilder;
.source "ContinuousBurstUIBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/component/UIComponentBuilder",
        "<",
        "Lcom/android/camera/component/ContinuousBurstUI;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 1

    const-string v0, "Continuous Burst UI"

    invoke-direct {p0, v0}, Lcom/android/camera/component/UIComponentBuilder;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/Component;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/camera/component/ContinuousBurstUIBuilder;->createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/ContinuousBurstUI;

    move-result-object v0

    return-object v0
.end method

.method public createComponent(Lcom/android/camera/HTCCamera;)Lcom/android/camera/component/ContinuousBurstUI;
    .locals 1

    new-instance v0, Lcom/android/camera/component/ContinuousBurstUI;

    invoke-direct {v0, p1}, Lcom/android/camera/component/ContinuousBurstUI;-><init>(Lcom/android/camera/HTCCamera;)V

    return-object v0
.end method

.method protected isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 1

    invoke-static {p1}, Lcom/android/camera/component/ContinuousBurstController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v0

    return v0
.end method
