.class Lcom/android/camera/actionscreen/ActionScreenSelector$1;
.super Ljava/lang/Object;
.source "ActionScreenSelector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/actionscreen/ActionScreenSelector;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actionscreen/ActionScreenSelector;

.field final synthetic val$actionScreen:Lcom/android/camera/actionscreen/ActionScreen;


# direct methods
.method constructor <init>(Lcom/android/camera/actionscreen/ActionScreenSelector;Lcom/android/camera/actionscreen/ActionScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/actionscreen/ActionScreenSelector$1;->this$0:Lcom/android/camera/actionscreen/ActionScreenSelector;

    iput-object p2, p0, Lcom/android/camera/actionscreen/ActionScreenSelector$1;->val$actionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/actionscreen/ActionScreenSelector$1;->this$0:Lcom/android/camera/actionscreen/ActionScreenSelector;

    invoke-virtual {v0}, Lcom/android/camera/actionscreen/ActionScreenSelector;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/actionscreen/ActionScreenSelector$1;->val$actionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    invoke-virtual {v0, v1}, Lcom/android/camera/component/UIComponentManager;->addComponent(Lcom/android/camera/component/Component;)V

    return-void
.end method
