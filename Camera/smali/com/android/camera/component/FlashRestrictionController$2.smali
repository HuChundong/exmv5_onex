.class Lcom/android/camera/component/FlashRestrictionController$2;
.super Ljava/lang/Object;
.source "FlashRestrictionController.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/FlashRestrictionController;->initializeOverride()V
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
.field final synthetic this$0:Lcom/android/camera/component/FlashRestrictionController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/FlashRestrictionController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/FlashRestrictionController$2;->this$0:Lcom/android/camera/component/FlashRestrictionController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 5
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

    iget-object v3, p0, Lcom/android/camera/component/FlashRestrictionController$2;->this$0:Lcom/android/camera/component/FlashRestrictionController;

    invoke-virtual {v3}, Lcom/android/camera/component/FlashRestrictionController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    sget-object v4, Lcom/android/camera/component/FlashRestrictionController$11;->$SwitchMap$com$android$camera$TakingPictureState:[I

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->takingPictureState:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/TakingPictureState;

    invoke-virtual {v3}, Lcom/android/camera/TakingPictureState;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget-object v4, Lcom/android/camera/component/FlashRestrictionController$11;->$SwitchMap$com$android$camera$RecordingState:[I

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->recordingState:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/RecordingState;

    invoke-virtual {v3}, Lcom/android/camera/RecordingState;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/android/camera/component/FlashRestrictionController$2;->this$0:Lcom/android/camera/component/FlashRestrictionController;

    #getter for: Lcom/android/camera/component/FlashRestrictionController;->m_IsFlashDisabled:Z
    invoke-static {v3}, Lcom/android/camera/component/FlashRestrictionController;->access$200(Lcom/android/camera/component/FlashRestrictionController;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/component/FlashRestrictionController$2;->this$0:Lcom/android/camera/component/FlashRestrictionController;

    const-class v4, Lcom/android/camera/IToastManager;

    invoke-virtual {v3, v4}, Lcom/android/camera/component/FlashRestrictionController;->getUIComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/IToastManager;

    iget-object v3, p0, Lcom/android/camera/component/FlashRestrictionController$2;->this$0:Lcom/android/camera/component/FlashRestrictionController;

    #calls: Lcom/android/camera/component/FlashRestrictionController;->getRestrictionHint()I
    invoke-static {v3}, Lcom/android/camera/component/FlashRestrictionController;->access$300(Lcom/android/camera/component/FlashRestrictionController;)I

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Lcom/android/camera/IToastManager;->showToast(I)Lcom/android/camera/Handle;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/camera/component/FlashRestrictionController$2;->this$0:Lcom/android/camera/component/FlashRestrictionController;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/camera/component/FlashRestrictionController;->access$400(Lcom/android/camera/component/FlashRestrictionController;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "No IToastManager interface"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
