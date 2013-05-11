.class Lcom/android/camera/effect/EffectManager$7;
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

    iput-object p1, p0, Lcom/android/camera/effect/EffectManager$7;->this$0:Lcom/android/camera/effect/EffectManager;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 6

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/android/camera/effect/EffectManager$7;->this$0:Lcom/android/camera/effect/EffectManager;

    iget-object v2, v2, Lcom/android/camera/effect/IEffectManager;->currentEffect:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/EffectBase;

    iget-object v2, p0, Lcom/android/camera/effect/EffectManager$7;->this$0:Lcom/android/camera/effect/EffectManager;

    iget-object v2, v2, Lcom/android/camera/effect/IEffectManager;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/EffectBase;

    iget-object v3, p0, Lcom/android/camera/effect/EffectManager$7;->this$0:Lcom/android/camera/effect/EffectManager;

    iget-object v2, p0, Lcom/android/camera/effect/EffectManager$7;->this$0:Lcom/android/camera/effect/EffectManager;

    #getter for: Lcom/android/camera/effect/EffectManager;->m_AllScenes:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/camera/effect/EffectManager;->access$400(Lcom/android/camera/effect/EffectManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/effect/EffectBase;

    #setter for: Lcom/android/camera/effect/EffectManager;->m_DefaultScene:Lcom/android/camera/effect/EffectBase;
    invoke-static {v3, v2}, Lcom/android/camera/effect/EffectManager;->access$702(Lcom/android/camera/effect/EffectManager;Lcom/android/camera/effect/EffectBase;)Lcom/android/camera/effect/EffectBase;

    iget-object v2, p0, Lcom/android/camera/effect/EffectManager$7;->this$0:Lcom/android/camera/effect/EffectManager;

    #getter for: Lcom/android/camera/effect/EffectManager;->m_CameraSettings:Lcom/android/camera/CameraSettings;
    invoke-static {v2}, Lcom/android/camera/effect/EffectManager;->access$800(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/CameraSettings;

    move-result-object v2

    const-string v3, "pref_camera_scene"

    iget-object v4, p0, Lcom/android/camera/effect/EffectManager$7;->this$0:Lcom/android/camera/effect/EffectManager;

    #getter for: Lcom/android/camera/effect/EffectManager;->m_DefaultScene:Lcom/android/camera/effect/EffectBase;
    invoke-static {v4}, Lcom/android/camera/effect/EffectManager;->access$700(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/camera/effect/EffectManager$7;->this$0:Lcom/android/camera/effect/EffectManager;

    #setter for: Lcom/android/camera/effect/EffectManager;->m_NeedToApplyEffectAgain:Z
    invoke-static {v2, v5}, Lcom/android/camera/effect/EffectManager;->access$002(Lcom/android/camera/effect/EffectManager;Z)Z

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/camera/effect/EffectManager$7;->this$0:Lcom/android/camera/effect/EffectManager;

    #getter for: Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;
    invoke-static {v2}, Lcom/android/camera/effect/EffectManager;->access$900(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectBase;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/effect/EffectManager$7;->this$0:Lcom/android/camera/effect/EffectManager;

    #getter for: Lcom/android/camera/effect/EffectManager;->m_DefaultEffect:Lcom/android/camera/effect/EffectBase;
    invoke-static {v2}, Lcom/android/camera/effect/EffectManager;->access$900(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectBase;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Lcom/android/camera/effect/EffectBase;->prepareCancel(Lcom/android/camera/effect/EffectBase;I)V

    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/camera/effect/EffectManager$7;->this$0:Lcom/android/camera/effect/EffectManager;

    #getter for: Lcom/android/camera/effect/EffectManager;->m_DefaultScene:Lcom/android/camera/effect/EffectBase;
    invoke-static {v2}, Lcom/android/camera/effect/EffectManager;->access$700(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectBase;

    move-result-object v2

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/effect/EffectManager$7;->this$0:Lcom/android/camera/effect/EffectManager;

    #getter for: Lcom/android/camera/effect/EffectManager;->m_DefaultScene:Lcom/android/camera/effect/EffectBase;
    invoke-static {v2}, Lcom/android/camera/effect/EffectManager;->access$700(Lcom/android/camera/effect/EffectManager;)Lcom/android/camera/effect/EffectBase;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lcom/android/camera/effect/EffectBase;->prepareCancel(Lcom/android/camera/effect/EffectBase;I)V

    :cond_1
    iget-object v2, p0, Lcom/android/camera/effect/EffectManager$7;->this$0:Lcom/android/camera/effect/EffectManager;

    #calls: Lcom/android/camera/effect/EffectManager;->reset(Z)V
    invoke-static {v2, v5}, Lcom/android/camera/effect/EffectManager;->access$100(Lcom/android/camera/effect/EffectManager;Z)V

    return-void
.end method
