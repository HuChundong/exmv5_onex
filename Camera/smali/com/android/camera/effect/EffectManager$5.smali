.class Lcom/android/camera/effect/EffectManager$5;
.super Lcom/android/camera/trigger/Trigger;
.source "EffectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/EffectManager;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/EffectManager;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/EffectManager$5;->this$0:Lcom/android/camera/effect/EffectManager;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 5

    iget-object v3, p0, Lcom/android/camera/effect/EffectManager$5;->this$0:Lcom/android/camera/effect/EffectManager;

    #getter for: Lcom/android/camera/effect/EffectManager;->m_AllEffects:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/camera/effect/EffectManager;->access$300(Lcom/android/camera/effect/EffectManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/EffectBase;

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectBase;->releaseCachedResources()V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/camera/effect/EffectManager$5;->this$0:Lcom/android/camera/effect/EffectManager;

    #getter for: Lcom/android/camera/effect/EffectManager;->m_AllScenes:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/camera/effect/EffectManager;->access$400(Lcom/android/camera/effect/EffectManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/effect/EffectBase;

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectBase;->releaseCachedResources()V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/camera/effect/EffectManager$5;->this$0:Lcom/android/camera/effect/EffectManager;

    const/4 v4, 0x1

    #setter for: Lcom/android/camera/effect/EffectManager;->m_NeedToApplyEffectAgain:Z
    invoke-static {v3, v4}, Lcom/android/camera/effect/EffectManager;->access$002(Lcom/android/camera/effect/EffectManager;Z)Z

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDlxSeries()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/effect/EffectManager$5;->this$0:Lcom/android/camera/effect/EffectManager;

    #calls: Lcom/android/camera/effect/EffectManager;->unLockCpu()V
    invoke-static {v3}, Lcom/android/camera/effect/EffectManager;->access$500(Lcom/android/camera/effect/EffectManager;)V

    :cond_2
    return-void
.end method
