.class Lcom/android/camera/menu/UserScenesMenuItem$1;
.super Ljava/lang/Object;
.source "UserScenesMenuItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/menu/UserScenesMenuItem;->getViewOverride(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/menu/UserScenesMenuItem;


# direct methods
.method constructor <init>(Lcom/android/camera/menu/UserScenesMenuItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/menu/UserScenesMenuItem$1;->this$0:Lcom/android/camera/menu/UserScenesMenuItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v2, p0, Lcom/android/camera/menu/UserScenesMenuItem$1;->this$0:Lcom/android/camera/menu/UserScenesMenuItem;

    #getter for: Lcom/android/camera/menu/UserScenesMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v2}, Lcom/android/camera/menu/UserScenesMenuItem;->access$000(Lcom/android/camera/menu/UserScenesMenuItem;)Lcom/android/camera/HTCCamera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v2

    const-class v3, Lcom/android/camera/effect/IEffectManager;

    invoke-virtual {v2, v3}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/IEffectManager;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/camera/menu/UserScenesMenuItem$1;->this$0:Lcom/android/camera/menu/UserScenesMenuItem;

    #getter for: Lcom/android/camera/menu/UserScenesMenuItem;->m_LastSceneInL2:Lcom/android/camera/effect/EffectBase;
    invoke-static {v2}, Lcom/android/camera/menu/UserScenesMenuItem;->access$100(Lcom/android/camera/menu/UserScenesMenuItem;)Lcom/android/camera/effect/EffectBase;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/menu/UserScenesMenuItem$1;->this$0:Lcom/android/camera/menu/UserScenesMenuItem;

    #getter for: Lcom/android/camera/menu/UserScenesMenuItem;->m_LastSceneInL2:Lcom/android/camera/effect/EffectBase;
    invoke-static {v2}, Lcom/android/camera/menu/UserScenesMenuItem;->access$100(Lcom/android/camera/menu/UserScenesMenuItem;)Lcom/android/camera/effect/EffectBase;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/IEffectManager;->setCurrentScene(Ljava/lang/Class;)Z

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/camera/menu/UserScenesMenuItem$1;->this$0:Lcom/android/camera/menu/UserScenesMenuItem;

    iget-object v3, p0, Lcom/android/camera/menu/UserScenesMenuItem$1;->this$0:Lcom/android/camera/menu/UserScenesMenuItem;

    invoke-virtual {v3}, Lcom/android/camera/menu/UserScenesMenuItem;->getMenuListView()Lcom/android/camera/menu/MenuListView;

    move-result-object v3

    #setter for: Lcom/android/camera/menu/UserScenesMenuItem;->mMenuListView:Lcom/android/camera/menu/MenuListView;
    invoke-static {v2, v3}, Lcom/android/camera/menu/UserScenesMenuItem;->access$202(Lcom/android/camera/menu/UserScenesMenuItem;Lcom/android/camera/menu/MenuListView;)Lcom/android/camera/menu/MenuListView;

    iget-object v2, p0, Lcom/android/camera/menu/UserScenesMenuItem$1;->this$0:Lcom/android/camera/menu/UserScenesMenuItem;

    #getter for: Lcom/android/camera/menu/UserScenesMenuItem;->mMenuListView:Lcom/android/camera/menu/MenuListView;
    invoke-static {v2}, Lcom/android/camera/menu/UserScenesMenuItem;->access$200(Lcom/android/camera/menu/UserScenesMenuItem;)Lcom/android/camera/menu/MenuListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/menu/MenuListView;->updateItemContents()V

    :cond_1
    return-void

    :cond_2
    iget-object v2, v1, Lcom/android/camera/effect/IEffectManager;->sceneList:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/effect/EffectBase;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/IEffectManager;->setCurrentScene(Ljava/lang/Class;)Z

    goto :goto_0
.end method
