.class Lcom/android/camera/component/ZoomBar$3;
.super Ljava/lang/Object;
.source "ZoomBar.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ZoomBar;->initializeOverride()V
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
        "Lcom/android/camera/input/KeyEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ZoomBar;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ZoomBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ZoomBar$3;->this$0:Lcom/android/camera/component/ZoomBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0

    check-cast p3, Lcom/android/camera/input/KeyEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/component/ZoomBar$3;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/input/KeyEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/input/KeyEventArgs;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/input/KeyEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/input/KeyEventArgs;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/component/ZoomBar$3;->this$0:Lcom/android/camera/component/ZoomBar;

    #getter for: Lcom/android/camera/component/ZoomBar;->m_HTCCamera:Lcom/android/camera/HTCCamera;
    invoke-static {v0}, Lcom/android/camera/component/ZoomBar;->access$900(Lcom/android/camera/component/ZoomBar;)Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->HookVolKeys:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "default"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v5, 0x0

    const/16 v2, 0x2712

    const/4 v4, 0x0

    const/4 v6, 0x1

    iget v0, p3, Lcom/android/camera/input/KeyEventArgs;->keyCode:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget v0, p3, Lcom/android/camera/input/KeyEventArgs;->repeatCount:I

    if-le v0, v6, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ZoomBar$3;->this$0:Lcom/android/camera/component/ZoomBar;

    iget-object v1, p0, Lcom/android/camera/component/ZoomBar$3;->this$0:Lcom/android/camera/component/ZoomBar;

    const/4 v3, -0x1

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/component/ZoomBar;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;Z)Z

    :goto_1
    invoke-virtual {p3}, Lcom/android/camera/input/KeyEventArgs;->setHandled()V

    goto :goto_0

    :pswitch_1
    iget v0, p3, Lcom/android/camera/input/KeyEventArgs;->repeatCount:I

    if-le v0, v6, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ZoomBar$3;->this$0:Lcom/android/camera/component/ZoomBar;

    iget-object v1, p0, Lcom/android/camera/component/ZoomBar$3;->this$0:Lcom/android/camera/component/ZoomBar;

    move v3, v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/component/ZoomBar;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;Z)Z

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
