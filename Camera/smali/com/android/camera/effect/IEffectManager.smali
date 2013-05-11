.class public abstract Lcom/android/camera/effect/IEffectManager;
.super Lcom/android/camera/component/CameraCompoment;
.source "IEffectManager.java"


# instance fields
.field public final currentEffect:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/effect/EffectBase;",
            ">;"
        }
    .end annotation
.end field

.field public final currentScene:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/effect/EffectBase;",
            ">;"
        }
    .end annotation
.end field

.field public final effectAppliedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Lcom/android/camera/effect/EffectBase;",
            ">;>;"
        }
    .end annotation
.end field

.field public final effectCanceledEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Lcom/android/camera/effect/EffectBase;",
            ">;>;"
        }
    .end annotation
.end field

.field public final effectList:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/effect/EffectBase;",
            ">;>;"
        }
    .end annotation
.end field

.field public final sceneList:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/effect/EffectBase;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p3}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/camera/component/CameraCompoment;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;)V

    new-instance v0, Lcom/android/camera/property/Property;

    const-string v1, "IEffectManager.CurrentEffect"

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/effect/IEffectManager;->currentEffect:Lcom/android/camera/property/Property;

    new-instance v0, Lcom/android/camera/property/Property;

    const-string v1, "IEffectManager.CurrentScene"

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/effect/IEffectManager;->currentScene:Lcom/android/camera/property/Property;

    new-instance v0, Lcom/android/camera/property/Property;

    const-string v1, "IEffectManager.EffectList"

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/effect/IEffectManager;->effectList:Lcom/android/camera/property/Property;

    new-instance v0, Lcom/android/camera/property/Property;

    const-string v1, "IEffectManager.SceneList"

    iget-object v2, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/android/camera/property/Property;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/effect/IEffectManager;->sceneList:Lcom/android/camera/property/Property;

    new-instance v0, Lcom/android/camera/event/Event;

    const-string v1, "IEffectManager.EffectApplied"

    invoke-direct {v0, p0, v1}, Lcom/android/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/effect/IEffectManager;->effectAppliedEvent:Lcom/android/camera/event/Event;

    new-instance v0, Lcom/android/camera/event/Event;

    const-string v1, "IEffectManager.EffectCanceled"

    invoke-direct {v0, p0, v1}, Lcom/android/camera/event/Event;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/effect/IEffectManager;->effectCanceledEvent:Lcom/android/camera/event/Event;

    return-void
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/android/camera/event/Event;->destroyAllEvents(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/camera/component/CameraCompoment;->deinitializeOverride()V

    return-void
.end method

.method public abstract setCurrentEffect(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/camera/effect/EffectBase;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)Z"
        }
    .end annotation
.end method

.method public abstract setCurrentScene(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/camera/effect/EffectBase;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)Z"
        }
    .end annotation
.end method
