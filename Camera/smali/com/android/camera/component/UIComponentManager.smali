.class public final Lcom/android/camera/component/UIComponentManager;
.super Lcom/android/camera/component/ComponentManager;
.source "UIComponentManager.java"


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/component/ComponentManager;-><init>(Lcom/android/camera/component/IComponentOwner;)V

    return-void
.end method


# virtual methods
.method public getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;
    .locals 3

    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/camera/component/UIComponentManager;->getOwner()Lcom/android/camera/component/IComponentOwner;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)Lcom/android/camera/component/Component;

    move-result-object v1

    return-object v1
.end method
