.class Lcom/android/camera/effect/EffectPanelUI$12;
.super Ljava/lang/Object;
.source "EffectPanelUI.java"

# interfaces
.implements Lcom/android/camera/widget/PopupBubble$OnClosedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/EffectPanelUI;->initializeUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/EffectPanelUI;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/EffectPanelUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/EffectPanelUI$12;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Lcom/android/camera/widget/PopupBubble;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI$12;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    const/16 v1, 0x2711

    #calls: Lcom/android/camera/effect/EffectPanelUI;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/android/camera/effect/EffectPanelUI;->access$1700(Lcom/android/camera/effect/EffectPanelUI;I)V

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI$12;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #getter for: Lcom/android/camera/effect/EffectPanelUI;->effectPanelState:Lcom/android/camera/property/Property;
    invoke-static {v0}, Lcom/android/camera/effect/EffectPanelUI;->access$1800(Lcom/android/camera/effect/EffectPanelUI;)Lcom/android/camera/property/Property;

    move-result-object v0

    sget-object v1, Lcom/android/camera/UIState;->Closing:Lcom/android/camera/UIState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI$12;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #getter for: Lcom/android/camera/effect/EffectPanelUI;->effectPanelState:Lcom/android/camera/property/Property;
    invoke-static {v0}, Lcom/android/camera/effect/EffectPanelUI;->access$1800(Lcom/android/camera/effect/EffectPanelUI;)Lcom/android/camera/property/Property;

    move-result-object v0

    sget-object v1, Lcom/android/camera/UIState;->Closed:Lcom/android/camera/UIState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI$12;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->notifyPopupBubbleClosed()V

    return-void
.end method
