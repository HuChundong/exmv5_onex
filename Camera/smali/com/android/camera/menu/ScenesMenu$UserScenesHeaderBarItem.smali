.class Lcom/android/camera/menu/ScenesMenu$UserScenesHeaderBarItem;
.super Lcom/android/camera/menu/RadioButtonMenuItem;
.source "ScenesMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/menu/ScenesMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserScenesHeaderBarItem"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/menu/ScenesMenu;


# direct methods
.method constructor <init>(Lcom/android/camera/menu/ScenesMenu;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/menu/ScenesMenu$UserScenesHeaderBarItem;->this$0:Lcom/android/camera/menu/ScenesMenu;

    invoke-direct {p0, p2}, Lcom/android/camera/menu/RadioButtonMenuItem;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected onClicked()Z
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/camera/menu/ScenesMenu$UserScenesHeaderBarItem;->this$0:Lcom/android/camera/menu/ScenesMenu;

    #getter for: Lcom/android/camera/menu/ScenesMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v1}, Lcom/android/camera/menu/ScenesMenu;->access$100(Lcom/android/camera/menu/ScenesMenu;)Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v1

    const-class v2, Lcom/android/camera/effect/IEffectManager;

    invoke-virtual {v1, v2}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/IEffectManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/menu/ScenesMenu$UserScenesHeaderBarItem;->this$0:Lcom/android/camera/menu/ScenesMenu;

    #getter for: Lcom/android/camera/menu/ScenesMenu;->m_lastSceneInSceneSelect:Lcom/android/camera/effect/EffectBase;
    invoke-static {v1}, Lcom/android/camera/menu/ScenesMenu;->access$200(Lcom/android/camera/menu/ScenesMenu;)Lcom/android/camera/effect/EffectBase;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/menu/ScenesMenu$UserScenesHeaderBarItem;->this$0:Lcom/android/camera/menu/ScenesMenu;

    #getter for: Lcom/android/camera/menu/ScenesMenu;->m_lastSceneInSceneSelect:Lcom/android/camera/effect/EffectBase;
    invoke-static {v1}, Lcom/android/camera/menu/ScenesMenu;->access$200(Lcom/android/camera/menu/ScenesMenu;)Lcom/android/camera/effect/EffectBase;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/IEffectManager;->setCurrentScene(Ljava/lang/Class;)Z

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v1, v0, Lcom/android/camera/effect/IEffectManager;->sceneList:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/effect/IEffectManager;->sceneList:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/EffectBase;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/IEffectManager;->setCurrentScene(Ljava/lang/Class;)Z

    goto :goto_0
.end method
