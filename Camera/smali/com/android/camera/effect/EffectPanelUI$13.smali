.class Lcom/android/camera/effect/EffectPanelUI$13;
.super Ljava/lang/Object;
.source "EffectPanelUI.java"

# interfaces
.implements Lcom/android/camera/widget/PopupBubble$OnOpenListener;


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

    iput-object p1, p0, Lcom/android/camera/effect/EffectPanelUI$13;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpen(Lcom/android/camera/widget/PopupBubble;)V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI$13;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    iget-object v1, p0, Lcom/android/camera/effect/EffectPanelUI$13;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    const/16 v2, 0x2711

    const-wide/16 v3, 0x1388

    const/4 v5, 0x1

    #calls: Lcom/android/camera/effect/EffectPanelUI;->sendMessage(Lcom/android/camera/component/Component;IJZ)Z
    invoke-static/range {v0 .. v5}, Lcom/android/camera/effect/EffectPanelUI;->access$1900(Lcom/android/camera/effect/EffectPanelUI;Lcom/android/camera/component/Component;IJZ)Z

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI$13;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #getter for: Lcom/android/camera/effect/EffectPanelUI;->effectPanelState:Lcom/android/camera/property/Property;
    invoke-static {v0}, Lcom/android/camera/effect/EffectPanelUI;->access$1800(Lcom/android/camera/effect/EffectPanelUI;)Lcom/android/camera/property/Property;

    move-result-object v0

    sget-object v1, Lcom/android/camera/UIState;->Opening:Lcom/android/camera/UIState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI$13;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #getter for: Lcom/android/camera/effect/EffectPanelUI;->effectPanelState:Lcom/android/camera/property/Property;
    invoke-static {v0}, Lcom/android/camera/effect/EffectPanelUI;->access$1800(Lcom/android/camera/effect/EffectPanelUI;)Lcom/android/camera/property/Property;

    move-result-object v0

    sget-object v1, Lcom/android/camera/UIState;->Opened:Lcom/android/camera/UIState;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI$13;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectPanelUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->notifyPopupBubbleOpened()V

    return-void
.end method
