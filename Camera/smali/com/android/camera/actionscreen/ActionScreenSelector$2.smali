.class Lcom/android/camera/actionscreen/ActionScreenSelector$2;
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


# direct methods
.method constructor <init>(Lcom/android/camera/actionscreen/ActionScreenSelector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/actionscreen/ActionScreenSelector$2;->this$0:Lcom/android/camera/actionscreen/ActionScreenSelector;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/actionscreen/ActionScreenSelector$2;->this$0:Lcom/android/camera/actionscreen/ActionScreenSelector;

    invoke-virtual {v0}, Lcom/android/camera/actionscreen/ActionScreenSelector;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/actionscreen/ActionScreenSelector$2;->this$0:Lcom/android/camera/actionscreen/ActionScreenSelector;

    invoke-virtual {v0, v1}, Lcom/android/camera/component/UIComponentManager;->removeComponent(Lcom/android/camera/component/Component;)Z

    return-void
.end method
