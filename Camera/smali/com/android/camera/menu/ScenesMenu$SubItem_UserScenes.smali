.class Lcom/android/camera/menu/ScenesMenu$SubItem_UserScenes;
.super Lcom/android/camera/menu/CheckIconMenuItem;
.source "ScenesMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/menu/ScenesMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubItem_UserScenes"
.end annotation


# instance fields
.field private final scene:Lcom/android/camera/effect/EffectBase;

.field final synthetic this$0:Lcom/android/camera/menu/ScenesMenu;


# direct methods
.method public constructor <init>(Lcom/android/camera/menu/ScenesMenu;Lcom/android/camera/effect/EffectBase;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/camera/menu/ScenesMenu$SubItem_UserScenes;->this$0:Lcom/android/camera/menu/ScenesMenu;

    invoke-direct {p0}, Lcom/android/camera/menu/CheckIconMenuItem;-><init>()V

    iput-object p2, p0, Lcom/android/camera/menu/ScenesMenu$SubItem_UserScenes;->scene:Lcom/android/camera/effect/EffectBase;

    #calls: Lcom/android/camera/menu/ScenesMenu;->getIconAndText(Lcom/android/camera/effect/EffectBase;)[Ljava/lang/Integer;
    invoke-static {p2}, Lcom/android/camera/menu/ScenesMenu;->access$000(Lcom/android/camera/effect/EffectBase;)[Ljava/lang/Integer;

    move-result-object v0

    aget-object v1, v0, v2

    if-eqz v1, :cond_0

    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/menu/ScenesMenu$SubItem_UserScenes;->setIcon(I)V

    :cond_0
    aget-object v1, v0, v3

    if-eqz v1, :cond_1

    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/menu/ScenesMenu$SubItem_UserScenes;->setTitle(I)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/camera/menu/ScenesMenu$SubItem_UserScenes;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$300(Lcom/android/camera/menu/ScenesMenu$SubItem_UserScenes;)Lcom/android/camera/effect/EffectBase;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/menu/ScenesMenu$SubItem_UserScenes;->scene:Lcom/android/camera/effect/EffectBase;

    return-object v0
.end method


# virtual methods
.method protected onClicked()Z
    .locals 3

    iget-object v1, p0, Lcom/android/camera/menu/ScenesMenu$SubItem_UserScenes;->this$0:Lcom/android/camera/menu/ScenesMenu;

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

    iget-object v1, p0, Lcom/android/camera/menu/ScenesMenu$SubItem_UserScenes;->scene:Lcom/android/camera/effect/EffectBase;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/IEffectManager;->setCurrentScene(Ljava/lang/Class;)Z

    :cond_0
    const/4 v1, 0x0

    return v1
.end method
