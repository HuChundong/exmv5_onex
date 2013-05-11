.class Lcom/android/camera/component/AutoSceneUI$2;
.super Ljava/lang/Object;
.source "AutoSceneUI.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/AutoSceneUI;->setupEventHandlers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/event/EventHandler",
        "<",
        "Lcom/android/camera/event/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/AutoSceneUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/AutoSceneUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/AutoSceneUI$2;->this$0:Lcom/android/camera/component/AutoSceneUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/event/EventArgs;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/component/AutoSceneUI$2;->this$0:Lcom/android/camera/component/AutoSceneUI;

    #getter for: Lcom/android/camera/component/AutoSceneUI;->scene:Lcom/android/camera/property/Property;
    invoke-static {v0}, Lcom/android/camera/component/AutoSceneUI;->access$100(Lcom/android/camera/component/AutoSceneUI;)Lcom/android/camera/property/Property;

    move-result-object v0

    sget-object v1, Lcom/android/camera/AutoDetectedScene;->None:Lcom/android/camera/AutoDetectedScene;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    return-void
.end method
